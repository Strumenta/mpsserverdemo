function addCell(row, text) {
    const cell = document.createElement("td");
    cell.innerHTML = text;
    row.appendChild(cell);
    return cell;
}

function fillTable(data, idsToIndex) {
    var tbody = document.getElementsByTagName("tbody")[0];
    var headersRow = document.getElementsByTagName("thead")[0].children[0];
    for (var i=0;i<data.children.length;i++) {
        var c = data.children[i];
        addCell(headersRow, "-> " + c.properties["id"]);
    }
    for (var i=0;i<data.children.length;i++) {
        var c = data.children[i];
        var currentId = c.id.regularId;
        var newRow = document.createElement("tr");

        addCell(newRow, c.properties["id"]);
        var hasDescription = c.properties["description"] || false;
        var descriptionCell = addCell(newRow, c.properties["description"] || "-");
        if (hasDescription) {
            descriptionCell.setAttribute("data-id", c.id.regularId);
            descriptionCell.contentEditable = "true";
            descriptionCell.addEventListener('keyup', function (e) {
                const nodeId = e.target.getAttribute("data-id");
                const value = e.target.innerHTML;
                console.log("description for " + nodeId + " is: " + value);
                setDescription(nodeId, value);
            });
        }

        var connectedIndexes = [];
        for (var li=0;li<c.children.length;li++) {
            var l = c.children[li];
            var targetId = l.refs["target"].id.regularId;
            var targetIndex = idsToIndex[targetId];
            connectedIndexes.push(targetIndex);
        }

        for (var j=0;j<data.children.length;j++) {
            var cell = document.createElement("td");
            var input = document.createElement("input");
            input.type = "checkbox";
            input.setAttribute("data-source-id", currentId);
            input.setAttribute("data-target-id", data.children[j].id.regularId);
            input.checked = connectedIndexes.indexOf(j) != -1;
            input.addEventListener('change', function(e) {
                if (this.checked) {
                    link(e.target.getAttribute("data-source-id"), e.target.getAttribute("data-target-id"));
                } else {
                    unlink(e.target.getAttribute("data-source-id"), e.target.getAttribute("data-target-id"));
                }
            });
            cell.appendChild(input);
            newRow.appendChild(cell);
        }


        tbody.appendChild(newRow);
    }
}

function calculateIdsToIndex(data) {
    var idsToIndex = {};
    for (var i=0;i<data.children.length;i++) {
        var c = data.children[i];
        idsToIndex[c.id.regularId] = i;
    }
    return idsToIndex;
}

function drawDiagram(data) {
    var idsToIndex = calculateIdsToIndex(data);

    var g = new dagre.graphlib.Graph();
    g.setGraph({rankdir:"LR"});
    g.setDefaultEdgeLabel(function() { return {}; });

    for (var i=0;i<data.children.length;i++) {
        var c = data.children[i];
        if (c.concept == "com.strumenta.workflow.Start") {
            g.setNode("node_"+c.id.regularId,    { shape: "circle", label: "" });
        } else if (c.concept == "com.strumenta.workflow.Action") {
            g.setNode("node_"+c.id.regularId,    { label: c.properties["description"] });
        } else if (c.concept == "com.strumenta.workflow.End") {
            g.setNode("node_"+c.id.regularId,    { shape: "circle", label: "", style: "fill: #333" });
        } else {
        }
        for (var li=0;li<c.children.length;li++) {
            var l = c.children[li];
            var targetId = l.refs["target"].id.regularId;
            g.setEdge("node_"+c.id.regularId,   "node_"+targetId);
        }
    }
    var svg = d3.select("svg"),
        inner = d3.select("svg g"),
        zoom = d3.zoom().on("zoom", function() {
            inner.attr("transform", d3.event.transform);
        });
    svg.call(zoom);

    var render = dagreD3.render();

    d3.select("svg g").call(render, g);
}

const modelName = "com.strumenta.workflow.sandbox.examples";

function loadModel() {
    const Http = new XMLHttpRequest();
    const url='http://localhost:2904/models/' + modelName + '/6439756077573116110';
    Http.open("GET", url);
    Http.send();

    var done = false;

    Http.onreadystatechange = (e) => {
        if (done) {
            return
        }
        var text = Http.responseText;
        if (text.length < 2) return;
        var data = JSON.parse(Http.responseText).value;
        window.data = data;

        document.getElementById("title").innerHTML = data.properties["name"];

        var idsToIndex = calculateIdsToIndex(data);

        drawDiagram(data);
        fillTable(data, idsToIndex);
        done = true;
    }
}

function reloadDiagram() {
    const answer = fetch(`http://localhost:2904/models/${modelName}/6439756077573116110`);
    answer.then((value => {
        value.text().then((text)=>{
            const data = JSON.parse(text).value;
            drawDiagram(data);
        });
    }));
}

function link(sourceId, targetId) {
    ws.send(JSON.stringify({
        type: "ExecuteAction",
        node: {
            model: modelName,
            id: {
                regularId: '6439756077573116110'
            }
        },
        action: "link",
        params: {
            'sourceId': sourceId,
            'targetId': targetId
        }
    }));
}

function unlink(sourceId, targetId) {
    ws.send(JSON.stringify({
        type: "ExecuteAction",
        node: {
            model: modelName,
            id: {
                regularId: '6439756077573116110'
            }
        },
        action: "unlink",
        params: {
            'sourceId': sourceId,
            'targetId': targetId
        }
    }));
}

loadModel();

let ws = new WebSocket("ws://localhost:2904/socket");
ws.onopen = function (event) {
    ws.onmessage = function (event) {
        let msg = JSON.parse(event.data)
        console.log("Received", msg.type, msg);
        if (msg.type == "AnswerPropertyChange" || msg.type == "ExecuteActionAnswer") {
            reloadDiagram();
        }
    }
};

function setDescription(nodeId, value) {
    ws.send(JSON.stringify({
        type: "RequestForPropertyChange",
        node: {
            model: modelName,
            id: {
                regularId: nodeId
            }
        },
        propertyName: "description",
        propertyValue: value
    }));
}

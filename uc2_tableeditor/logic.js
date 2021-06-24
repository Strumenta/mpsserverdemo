const modelName = "com.strumenta.workflow.sandbox.examples";

function isStartNode(node) {
    return node.concept == "com.strumenta.workflow.Start";
}

function isActionNode(node) {
    return node.concept == "com.strumenta.workflow.Action";
}

function isEndNode(node) {
    return node.concept == "com.strumenta.workflow.End";
}

function modelNodeToGraphNodeId(node) {
    return "node_" + node.id.regularId
}

function addCell(row, text) {
    const cell = document.createElement("td");
    cell.innerHTML = text;
    row.appendChild(cell);
    return cell;
}

function fillTable(data, idsToIndex) {
    const tbody = document.getElementsByTagName("tbody")[0];
    const headersRow = document.getElementsByTagName("thead")[0].children[0];
    for (let i = 0; i<data.children.length; i++) {
        const child = data.children[i];
        addCell(headersRow, "-> " + child.properties["id"]);
    }
    for (let i = 0; i<data.children.length; i++) {
        const child = data.children[i];
        const currentId = child.id.regularId;
        const newRow = document.createElement("tr");

        addCell(newRow, child.properties["id"]);
        const hasDescription = child.properties["description"] || false;
        const descriptionCell = addCell(newRow, child.properties["description"] || "-");
        if (hasDescription) {
            descriptionCell.setAttribute("data-id", child.id.regularId);
            descriptionCell.contentEditable = "true";
            descriptionCell.addEventListener('keyup', function (e) {
                const nodeId = e.target.getAttribute("data-id");
                const value = e.target.innerHTML;
                setDescription(nodeId, value);
            });
        }

        const connectedIndexes = [];
        for (let linkIndex=0; linkIndex<child.children.length; linkIndex++) {
            const link = child.children[linkIndex];
            const targetId = link.refs["target"].id.regularId;
            const targetIndex = idsToIndex[targetId];
            connectedIndexes.push(targetIndex);
        }

        for (let j=0; j < data.children.length; j++) {
            const cell = document.createElement("td");
            const input = document.createElement("input");
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

/**
 * Calculate a map from Node ID to child index.
 */
function calculateIdsToIndex(data) {
    let idsToIndex = {};
    for (let i = 0; i < data.children.length; i++) {
        const c = data.children[i];
        idsToIndex[c.id.regularId] = i;
    }
    return idsToIndex;
}

function createGraph(data) {
    const g = new dagre.graphlib.Graph();
    g.setGraph({rankdir: "LR"});
    g.setDefaultEdgeLabel(function () {
        return {};
    });

    for (let i = 0; i < data.children.length; i++) {
        const child = data.children[i];
        if (isStartNode(child)) {
            g.setNode("node_" + child.id.regularId, {shape: "circle", label: ""});
        } else if (isActionNode(child)) {
            g.setNode("node_" + child.id.regularId, {label: child.properties["description"], width: 80, height: 10});
        } else if (isEndNode(child)) {
            g.setNode("node_" + child.id.regularId, {shape: "circle", label: "", style: "fill: #333"});
        } else {
            // node not to be represented in the graph
        }
        for (let linkIndex = 0; linkIndex < child.children.length; linkIndex++) {
            const link = child.children[linkIndex];
            g.setEdge(modelNodeToGraphNodeId(child), modelNodeToGraphNodeId(link.refs["target"]));
        }
    }
    const svg = d3.select("svg"),
        inner = d3.select("svg g"),
        zoom = d3.zoom().on("zoom", function () {
            inner.attr("transform", d3.event.transform);
        });
    svg.call(zoom);

    const render = dagreD3.render();
    d3.select("svg g").call(render, g);
}

function loadModel() {
    const answer = fetch(`http://localhost:2904/models/${modelName}/6439756077573116110`);
    answer.then((value => {
        value.text().then((text)=> {
            const msg = JSON.parse(text)            
            if (msg["success"] === false) {
                alert("data not obtained: " + msg["message"]);
                return;
            }
            const data = msg.value;
            document.getElementById("title").innerHTML = data.properties["name"];
            const idsToIndex = calculateIdsToIndex(data);
            createGraph(data);
            fillTable(data, idsToIndex);
        });
    }));
}

function reloadDiagram() {
    const answer = fetch(`http://localhost:2904/models/${modelName}/6439756077573116110`);
    answer.then((value => {
        value.text().then((text)=>{
            const data = JSON.parse(text).value;
            createGraph(data);
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

function init() {
    loadModel();

    window.ws = new WebSocket("ws://localhost:2904/socket");
    ws.onopen = function (event) {
        ws.onmessage = function (event) {
            let msg = JSON.parse(event.data)
            console.log("Received", msg.type, msg);
            if (msg.type == "AnswerPropertyChange" || msg.type == "ExecuteActionAnswer") {
                reloadDiagram();
            }
        }
    };
}

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

init();
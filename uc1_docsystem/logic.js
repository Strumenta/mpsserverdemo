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

function populateList(data, idsToIndex) {
    for (let i = 0; i < data.children.length; i++) {
        const newLi = document.createElement("li");
        const c = data.children[i];
        if (isStartNode(c)) {
            const targetIndex = idsToIndex[c.children[0].refs.target.id.regularId] + 1;
            newLi.innerHTML = "We <i>start</i> by going to step " + targetIndex;
        } else if (isActionNode(c)) {
            const targetIndex = idsToIndex[c.children[0].refs.target.id.regularId] + 1;
            newLi.innerHTML = "We <b>do</b>  " + c.properties["description"] + ". Then we go to step " + targetIndex;
        } else if (isEndNode(c)) {
            newLi.innerHTML = "With this we consider the workflow completed.";
        } else {
            newLi.innerHTML = "unknown step";
        }
        document.getElementById("steps").appendChild(newLi);
    }
}

const answer = fetch('http://localhost:2904/models/com.strumenta.workflow.sandbox.examples/6439756077573116110');
answer.then((value => {
    value.text().then((text)=>{
        const data = JSON.parse(text).value;

        // Set the title as the name of the workflow
        document.getElementById("title").innerHTML = data.properties["name"];

        createGraph(data);
        populateList(data, calculateIdsToIndex(data));
    });
}));

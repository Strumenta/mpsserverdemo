import {MPSServerClient} from "mpssserver-client";

const client = new MPSServerClient('ws://localhost:2904/jsonrpc');

async function core() {
    await client.connect().catch((reason: any)=> {
        console.error("unable to connect to server", reason);
        process.exit(1);
    });
    const myName = await client.introduceSelf("example");
    console.log("assigned name", myName);
    client.registerForChanges("NewSolution.model1", {
        onNodeAdded: (event) => {
            console.log("node added", event)  
        },
        onNodeRemoved: (event) => {
            console.log("node removed", event)
        },
        onReferenceChanged: (event) => {
            console.log("reference changed", event)
        },        
        onPropertyChange: (event) => {
            console.log("property changed", event)
        }
        
    })

}
void core();

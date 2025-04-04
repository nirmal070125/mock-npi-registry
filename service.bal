import ballerina/http;
import ballerina/uuid;

# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + id - the id of the person to greet
    # + return - string name with hello message or error
    resource function get npi(int id) returns string {
        // Send a response back to the caller.
        return uuid:createType1AsString();
    }
}

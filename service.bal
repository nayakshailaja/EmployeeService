import ballerina/http;

type Employee record {
    string ENumber;
    string EName;
    string EGender;
};

# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {

    # A resource for generating greetings
    #
    # + number - Parameter Description
    # + return - string name with hello message or error
    resource function get employee(string number) returns Employee|error?{
        // Send a response back to the caller.

        if number is "123" {
            Employee EmpDetails = {
            ENumber: "123",
            EName: "Shailaja",
            EGender: "F"
        };
        return EmpDetails;
        } else if (number is "456") {
             Employee EmpDetails = {
            ENumber: "456",
            EName: "Avinash",
            EGender: "M"
        }; 
        return EmpDetails;
        }else {
                return error("Not Found");
        
        }
    }
}
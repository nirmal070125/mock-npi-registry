import ballerina/http;
import ballerina/io;
import ballerina/test;

http:Client testClient = check new ("http://localhost:9090");

// Before Suite Function
@test:BeforeSuite
function beforeSuiteFunc() {
    io:println("I'm the before suite function!");
}

// Test function
@test:Config {}
function testServiceWithProperName() {
    string|error response = testClient->/npi(id = 123);
    test:assertEquals(response.ensureType(string) is string, true);
}

// After Suite Function
@test:AfterSuite
function afterSuiteFunc() {
    io:println("I'm the after suite function!");
}

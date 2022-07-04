//
//  MyGreeter_ClientTests.swift
//  MyGreeter.ClientTests
//
//  Created by 王斌 on 2022/7/4.
//

import XCTest
@testable import MyGreeter_Client

class MyGreeter_ClientTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testGreeterInstance() {
        let greeterClient = MyGreeterClient()
        XCTAssertNotNil(greeterClient)
    }
    
    func testGreeter() {
        let client = MyGreeterClient()
        
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: Date())
        
        switch hour {
        case 6..<12:
            XCTAssert(client.greet() == "Good morning")
        case 12..<18:
            XCTAssert(client.greet() == "Good afternoon")
        default:
            XCTAssert(client.greet() == "Good evening")
        }
        
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

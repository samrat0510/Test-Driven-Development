//
//  StackTests.swift
//  Assignment-Day1Tests
//
//  Created by BKS-GGS on 09/01/23.
//

import XCTest
@testable import Assignment_Day1

/*
 
 Problem Statement -
 
 Implement a stack using TDD using array
 
 
 */
class StackTests: XCTestCase {
    
    var objStack : Stack?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        objStack = Stack()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        objStack = nil
    }
    
    func testItemPush(){
        
        //To check if the element is pushed into stack
        objStack?.itemPush(n: 24)
        XCTAssertEqual(objStack?.valuesInStack.first, 24)
        
        //To check if the first element of the stack is the one which is pushed latest
        objStack?.itemPush(n: 90)
        XCTAssertEqual(objStack?.valuesInStack.first, 90)
    }
    
    func testItemPopped(){
        
        //To check if the element is popped from the stack
        objStack?.itemPush(n: 24)
        objStack?.itemPush(n: 21)
        objStack?.itemPush(n: 34)
        objStack?.itemPop()
        XCTAssertEqual(objStack?.valuesInStack.first, 21)
        objStack?.itemPop()
        XCTAssertEqual(objStack?.valuesInStack.first, 24)
        objStack?.itemPop()
        XCTAssertEqual(objStack?.valuesInStack.count, 0)
        objStack?.itemPop()
        
    }
    
    func testPeek(){
        
        //To check if the top element of the stack is returned
        objStack?.itemPush(n: 23)
        objStack?.itemPush(n: 24)
        objStack?.itemPush(n: 47)
        let result = objStack?.peek()
        XCTAssertEqual(result, 47)
    }
}

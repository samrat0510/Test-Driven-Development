//
//  QueueTests.swift
//  Assignment-Day1Tests
//
//  Created by BKS-GGS on 09/01/23.
//

import XCTest
@testable import Assignment_Day1

class QueueTests: XCTestCase {
    
    var objQueue : Queue?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        objQueue = Queue()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        objQueue = nil
    }
    
    func testEnqueue(){
        
        //To check if the number is getting enqueued
        objQueue?.itemEnqueue(n:30)
        objQueue?.itemEnqueue(n:62)
        XCTAssertEqual(objQueue?.valuesInQueue.count, 2)
        
    }
    
    func testDequeue(){
        
        //To check if the number is getting dequeued
        objQueue?.itemEnqueue(n:17)
        objQueue?.itemDequeue()
        XCTAssertEqual(objQueue?.valuesInQueue.count, 0)
        objQueue?.itemDequeue()   //Nil Queue Check
        
    }
    
    func testGetFront(){
        objQueue?.itemEnqueue(n:17)
        objQueue?.itemEnqueue(n:30)
        objQueue?.itemEnqueue(n:62)
        XCTAssertEqual(objQueue?.getFront(), 17)
    }
    
    func testGetRear(){
        objQueue?.itemEnqueue(n:17)
        objQueue?.itemEnqueue(n:30)
        objQueue?.itemEnqueue(n:62)
        XCTAssertEqual(objQueue?.getRear(), 62)
    }
}

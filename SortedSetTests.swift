//
//  SortedSetTests.swift
//  Assignment-Day1Tests
//
//  Created by BKS-GGS on 09/01/23.
//

import XCTest
@testable import Assignment_Day1

/*
 PROBLEM STATEMENT-
 
 You have an array:
 
 Conditions- 1. Duplicates not allowed. 2. Sorted after every insetion
 
 1. addElement
 2. addAll
 3. max
 4. min
 5. deleteElementFromIndex
 6. isExist
 */

class SortedSetTests: XCTestCase {
    
    var objSortedSet : SortedSet?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        objSortedSet = SortedSet()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        objSortedSet = nil
    }
    
    func testAddElement(){
        //To check if element is inserted
        objSortedSet?.addElement(n:25)
        XCTAssertEqual(objSortedSet?.arr1.count, 1)
        
        //To check if elements are getting sorted
        objSortedSet?.addElement(n:23)
        XCTAssertEqual(objSortedSet?.arr1.first, 23)
        
        //To check if the count is not increased for duplicate elements
        objSortedSet?.addElement(n:23)
        XCTAssertEqual(objSortedSet?.arr1.count, 2)
    }
    
    func testAddAll(){
        
        //To check if all the elements are added
        objSortedSet?.addAll(elements:[1,2])
        XCTAssertEqual(objSortedSet?.arr1.count, 2)
        
        //To check if the duplicate elemets are skipped
        objSortedSet?.addAll(elements:[1,2,2,3])
        XCTAssertEqual(objSortedSet?.arr1.count, 3)
        
    }
    
    func testMaxim(){
        //To check the maximum value in the array
        objSortedSet?.addAll(elements:[15,20,30,23,42])
        let result = objSortedSet?.maxim()
        XCTAssertEqual(result, 42)
    }
    
    func testMinim(){
        
        objSortedSet?.addAll(elements:[15,20,30,23,42])
        let result = objSortedSet?.minim()
        XCTAssertEqual(result, 15)
    }
    
    func testDeleteElementFromIndex(){
        
        //To check if the element is removed from the valid index
        objSortedSet?.addAll(elements:[1,2])
        objSortedSet?.deleteElementFromIndex(n:1)
        XCTAssertEqual(objSortedSet?.arr1.count, 1)
        
        objSortedSet?.addAll(elements:[3,3,4])
        objSortedSet?.deleteElementFromIndex(n: 0)
        XCTAssertEqual(objSortedSet?.arr1.count, 2)
        
        objSortedSet?.addAll(elements:[3,3,4])
        objSortedSet?.deleteElementFromIndex(n: 5)
        
    }
    
    func testIsExist(){
        
        //To check if the given value is not present
        objSortedSet?.addAll(elements:[15,20,30,23,42])
        let exist = objSortedSet?.isExist(n:25)
        XCTAssertEqual(exist, false)
        
        //To check if the given value is present
        let exist2 = objSortedSet?.isExist(n:23)
        XCTAssertEqual(exist2, true)
        
    }
}

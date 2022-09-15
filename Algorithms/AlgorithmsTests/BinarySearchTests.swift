//
//  BinarySearchTests.swift
//  AlgorithmsTests
//
//  Created by Alexis Charytonow on 8/26/22.
//

import XCTest
import Algorithms

class BinarySearchTests: XCTestCase {
    
    func assertSearchIterative(expectedPosition position: Int?,
                      in arrayOfInts: [Int],
                      search target: Int,
                      file: StaticString = #file,
                      line: UInt = #line) {
        let positionFound = BinarySearch.binarySearchIterative(arrayOfInts: arrayOfInts, target: target)
        XCTAssertEqual(position, positionFound, file: file, line: line)
    }
    
    func test_binarySearch_iterative() {
        assertSearchIterative(expectedPosition: nil, in: [Int](), search: 0)
        assertSearchIterative(expectedPosition: 2, in: [5, 10, 15, 20, 25], search: 15)
        
        for tc in TestCaseGenerator.generateBinarySearchTestCases(seed: 0) {
            print("Expected Position: \(String(describing: tc.expectedPosition)), Array: \(tc.arrayOfInts), Target: \(tc.target)")
            assertSearchIterative(expectedPosition: tc.expectedPosition, in: tc.arrayOfInts, search: tc.target)
        }
    }
    
    func assertSearchRecursive(expectedPosition position: Int?,
                      in arrayOfInts: [Int],
                      search target: Int,
                      file: StaticString = #file,
                      line: UInt = #line) {
        let positionFound = BinarySearch.binarySearchRecursive(arrayOfInts: arrayOfInts, target: target)
        XCTAssertEqual(position, positionFound, file: file, line: line)
    }
    
    func test_binarySearch_recursive() {
        
        let knownFailingCase = [0, 2, 4, 6, 8]
        let target = 7
        XCTAssertEqual(nil, BinarySearch.binarySearchRecursive(arrayOfInts: knownFailingCase, target: target))
        
        for tc in TestCaseGenerator.generateBinarySearchTestCases(seed: 0) {
            print("Expected Position: \(String(describing: tc.expectedPosition)), Array: \(tc.arrayOfInts), Target: \(tc.target)")
            let positionFound = BinarySearch.binarySearchRecursive(arrayOfInts: tc.arrayOfInts, target: tc.target)
            XCTAssertEqual(tc.expectedPosition, positionFound)
        }
    }
    
}

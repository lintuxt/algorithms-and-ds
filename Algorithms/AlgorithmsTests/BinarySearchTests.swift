//
//  BinarySearchTests.swift
//  AlgorithmsTests
//
//  Created by Alexis Charytonow on 8/26/22.
//

import XCTest
import Algorithms

class BinarySearchTests: XCTestCase {
    
    func assertSearch(expectedPosition position: Int?,
                      in arrayOfInts: [Int],
                      search target: Int,
                      file: StaticString = #file,
                      line: UInt = #line) {
        let positionFound = BinarySearch.binarySearch(arrayOfInts: arrayOfInts, target: target)
        XCTAssertEqual(position, positionFound, file: file, line: line)
    }
    
    typealias BinarySearchTestCase = (expectedPosition: Int?, arrayOfInts: [Int], target: Int)
    func generateTestCases(seed: Int) -> [BinarySearchTestCase] {
        var testCases = [BinarySearchTestCase]()
        var arrayOfInts = [Int]()
        let absoluteSaltedSeed = abs(seed) + Int.random(in: 5...10)
        let randomStep = Int.random(in: 2...10)
        for n in 0..<absoluteSaltedSeed {
            arrayOfInts.append(n*randomStep)
        }
        let lastIndex = arrayOfInts.last ?? 0
        for n in 0..<lastIndex {
            let index = arrayOfInts.firstIndex(of: n)
            testCases.append((index, arrayOfInts, n))
        }
        return testCases
    }
    
    func test_binarySearch() {
        assertSearch(expectedPosition: nil, in: [Int](), search: 0)
        assertSearch(expectedPosition: 2, in: [5, 10, 15, 20, 25], search: 15)
        
        for tc in generateTestCases(seed: 0) {
            print("Expected Position: \(String(describing: tc.expectedPosition)), Array: \(tc.arrayOfInts), Target: \(tc.target)")
            assertSearch(expectedPosition: tc.expectedPosition, in: tc.arrayOfInts, search: tc.target)
        }
    }
    
}

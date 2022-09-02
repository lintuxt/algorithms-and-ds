//
//  SelectionSortTests.swift
//  AlgorithmsTests
//
//  Created by Alexis Charytonow on 9/2/22.
//

import XCTest
import Algorithms

class SelectionSortTests: XCTestCase {
    
    func generateTestCase(n: Int) ->  (unsortedArray: [Int], sortedArray: [Int]) {
        XCTAssert(n >= 0)
        
        var unsortedArrayOfInts = [Int]()
        
        for _ in 0..<n {
            unsortedArrayOfInts.append(Int.random(in: 0...10000))
        }
        
        return (unsortedArray: unsortedArrayOfInts, sortedArray: unsortedArrayOfInts.sorted())
    }
    
    func test_selectionSort() {
        for i in 0..<15 {
            let testCase = generateTestCase(n: i)
            let sortedArrayBySelectionSort = SelectionSort.selectionSort(testCase.unsortedArray)
            XCTAssertEqual(sortedArrayBySelectionSort, testCase.sortedArray)
        }
    }
}

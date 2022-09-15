//
//  SelectionSortTests.swift
//  AlgorithmsTests
//
//  Created by Alexis Charytonow on 9/2/22.
//

import XCTest
import Algorithms

class SelectionSortTests: XCTestCase {    
    func test_selectionSort() {
        for i in 0..<15 {
            let testCase = TestCaseGenerator.generateSortingTestCase(n: i)
            let sortedArrayBySelectionSort = SelectionSort.selectionSort(testCase.unsortedArray)
            XCTAssertEqual(sortedArrayBySelectionSort, testCase.sortedArray)
        }
    }
}

//
//  QuicksortTests.swift
//  AlgorithmsTests
//
//  Created by Alexis Charytonow on 9/14/22.
//

import XCTest

class Quick {
    public static func sort(_ array: [Int]) -> [Int] {
        if array.count < 2 {
            return array
        }
        let pivot = array[0]
        var lessPartition = [Int]()
        var greaterPartition = [Int]()
        for n in Array(array[1...]) {
            if n > pivot {
                greaterPartition.append(n)
            } else {
                lessPartition.append(n)
            }
        }
        return sort(lessPartition) + [pivot] + sort(greaterPartition)
    }
}

class QuicksortTests: XCTestCase {    
    func test_QuickSort() {
        for i in 0..<15 {
            let testCase = TestCaseGenerator.generateSortingTestCase(n: i)
            let sortedArrayByQuicksort = Quick.sort(testCase.unsortedArray)
            XCTAssertEqual(sortedArrayByQuicksort, testCase.sortedArray)
        }
    }
}

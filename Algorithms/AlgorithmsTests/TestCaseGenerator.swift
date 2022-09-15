//
//  TestCaseGenerator.swift
//  AlgorithmsTests
//
//  Created by Alexis Charytonow on 9/14/22.
//

import XCTest

public class TestCaseGenerator {
    
    public typealias BinarySearchTestCase = (expectedPosition: Int?, arrayOfInts: [Int], target: Int)
    public static func generateBinarySearchTestCases(seed: Int) -> [BinarySearchTestCase] {
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
    
    public static func generateSortingTestCase(n: Int) ->  (unsortedArray: [Int], sortedArray: [Int]) {
        XCTAssert(n >= 0)
        var unsortedArrayOfInts = [Int]()
        for _ in 0..<n {
            unsortedArrayOfInts.append(Int.random(in: 0...10000))
        }
        return (unsortedArray: unsortedArrayOfInts, sortedArray: unsortedArrayOfInts.sorted())
    }
    
}

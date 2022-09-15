//
//  DivideAndConquer.swift
//  AlgorithmsTests
//
//  Created by Alexis Charytonow on 9/13/22.
//

import XCTest
import Algorithms

class DivideAndConquer: XCTestCase {
    func test_GCD_1680and640() {
        let A = 1680
        let B = 640
        let gcd = GCDResolver.solve(A: A, B: B)
        XCTAssertEqual(gcd, 80)
    }
    
    func test_sumArrayRecursively() {
        let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let r = array.reduce(0, +)
        XCTAssertEqual(r, SumResolver.solve(array))
    }
    
    func test_countArrayElementsRecursively() {
        let array = [1, 1, 2, 3, 5, 8, 13, 21]
        XCTAssertEqual(array.count, CountSolver.solve(array))
    }
    
    func test_maxNumver() {
        let array = [2, 8, 55, 10, 20]
        XCTAssertEqual(55, MaxSolver.solve(array))
    }    
}

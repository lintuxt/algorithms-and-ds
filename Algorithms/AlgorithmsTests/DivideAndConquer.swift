//
//  DivideAndConquer.swift
//  AlgorithmsTests
//
//  Created by Alexis Charytonow on 9/13/22.
//

import XCTest

class GCDResolver {
    public static func solve(A: Int, B: Int) -> Int {
        if A > B {
            if A.isMultiple(of: B) {
                return B
            }
            return solve(A: A % B, B: B)
        } else {
            if B.isMultiple(of: A) {
                return A
            }
            return solve(A: A, B: B % A)
        }
    }
    
}


class DivideAndConquer: XCTestCase {
    func test_GCD_1680and640() {
        let A = 1680
        let B = 640
        let gcd = GCDResolver.solve(A: A, B: B)
        XCTAssertEqual(gcd, 80)
    }
}

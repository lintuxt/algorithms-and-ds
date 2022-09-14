//
//  DivideAndConquer.swift
//  Algorithms
//
//  Created by Alexis Charytonow on 9/14/22.
//

import Foundation

public class GCDResolver {
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

public class SumResolver {
    public static func solve(_ array: [Int]) -> Int {
        if array.isEmpty {
            return 0
        }
        return array[0] + solve(Array(array[1...]))
    }
}

public class CountSolver {
    public static func solve(_ array: [Int]) -> Int {
        if array.isEmpty {
            return 0
        }
        return 1 + solve(Array(array[1...]))
    }
}

public class MaxSolver {
    public static func solve(_ array: [Int]) -> Int? {
        if array.isEmpty { return nil }
        if array.count == 1 {
            return array[0]
        }
        return max(array[0], solve(Array(array[1...]))!)
    }
}

public class BinarySearchSolver {
    public static func solve(_ array: [Int], target: Int) -> Int? {
        return solve(array, lower: array.startIndex, upper: array.endIndex-1, target: target)
    }
    
    public static func solve(_ array: [Int], lower: Int, upper: Int, target: Int) -> Int? {
        if lower > upper { return nil }
        let middle =  Int(ceil(Double(lower + upper) / 2.0))
        if array[middle] == target {
            return middle
        } else if array[middle] < target {
            return solve(array, lower: middle+1, upper: upper, target: target)
        } else {
            return solve(array, lower: lower, upper: middle-1, target: target)
        }
    }
}

//
//  Executor.swift
//  Algorithms
//
//  Created by Alexis Charytonow on 8/26/22.
//

import Foundation

class BinarySearch {
    static func binarySearch(arrayOfInts: [Int], target: Int) -> Int? {
        var lowerBound = 0
        var upperBound = arrayOfInts.count - 1
        
        while lowerBound <= upperBound {
            let index = Int(ceil((Double(lowerBound) + Double(upperBound)) / 2.0))
            if arrayOfInts[index] == target {
                return index
            } else if arrayOfInts[index] < target {
                lowerBound = index + 1
            } else {
                upperBound = index - 1
            }
        }
        
        return nil
    }
}

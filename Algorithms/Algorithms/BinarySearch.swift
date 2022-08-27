//
//  Executor.swift
//  Algorithms
//
//  Created by Alexis Charytonow on 8/26/22.
//

import Foundation

class BinarySearch {
    static func binarySearch(arrayOfInts: [Int], target: Int) -> Int? {
        let sizeOfArray = arrayOfInts.count
        guard sizeOfArray != 0 else { return nil }
        
        var lowerBound = 0
        var upperBound = sizeOfArray - 1
        
        while (upperBound - lowerBound) > 1 {
            let index = Int(ceil((Double(lowerBound) + Double(upperBound)) / 2.0))
            if arrayOfInts[index] == target {
                return index
            } else if arrayOfInts[index] < target {
                lowerBound = index
            } else {
                upperBound = index
            }
        }
        
        if arrayOfInts[lowerBound] == target {
            return lowerBound
        }
        
        if arrayOfInts[upperBound] == target {
            return upperBound
        }
        
        return nil
    }
}

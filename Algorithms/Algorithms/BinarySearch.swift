//
//  BinarySearch.swift
//  Algorithms
//
//  Created by Alexis Charytonow on 8/26/22.
//

import Foundation

public class BinarySearch {
    public static func binarySearchIterative(arrayOfInts: [Int], target: Int) -> Int? {
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
    
    
    public static func binarySearchRecursive(arrayOfInts: [Int], target: Int) -> Int? {
        return binarySearchRecursive(arrayOfInts, lower: arrayOfInts.startIndex, upper: arrayOfInts.endIndex-1, target: target)
    }
    
    public static func binarySearchRecursive(_ arrayOfInts: [Int], lower: Int, upper: Int, target: Int) -> Int? {
        if lower > upper { return nil }
        let middle =  Int(ceil(Double(lower + upper) / 2.0))
        if arrayOfInts[middle] == target {
            return middle
        } else if arrayOfInts[middle] < target {
            return binarySearchRecursive(arrayOfInts, lower: middle+1, upper: upper, target: target)
        } else {
            return binarySearchRecursive(arrayOfInts, lower: lower, upper: middle-1, target: target)
        }
    }
    
}

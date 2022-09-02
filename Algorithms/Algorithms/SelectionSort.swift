//
//  SelectionSort.swift
//  Algorithms
//
//  Created by Alexis Charytonow on 9/2/22.
//


public class SelectionSort {
    
    private static func smallestIndex(_ array: [Int]) -> Int {
        var smallest_value = array[0]
        var smallest_index = 0
        for (i, v) in array.enumerated() {
            if v < smallest_value {
                smallest_value = v
                smallest_index = i
            }
        }
        return smallest_index
    }
    
    public static func selectionSort(_ array: [Int]) -> [Int] {
        var mutatingArray = array
        var sortedArray = [Int]()
        for _ in mutatingArray {
            let smallestIndex = smallestIndex(mutatingArray)
            let smallestValue = mutatingArray[smallestIndex]
            sortedArray.append(smallestValue)
            mutatingArray.remove(at: smallestIndex)
        }
        return sortedArray
    }
}

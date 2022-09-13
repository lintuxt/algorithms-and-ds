//
//  DFS.swift
//  Algorithms
//
//  Created by Alexis Charytonow on 9/13/22.
//

public class DFSKeyFinder {
    public static func findKey(in tree: Node) -> Node? {
        var key: Node?
        if tree.isKey {
            return tree
        } else if let children = tree.children {
            for child in children {
                key = findKey(in: child)
            }
        }
        return key
    }
}

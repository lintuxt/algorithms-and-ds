//
//  BFS.swift
//  Algorithms
//
//  Created by Alexis Charytonow on 9/11/22.
//

public class BFSKeyFinder {
    public static func findKey(in tree: Node) -> Node? {
        var nodes = [Node]()
        nodes.append(tree)
        while !nodes.isEmpty {
            let visitedNode = nodes.popLast()
            if let children = visitedNode?.children {
                for child in children {                    
                    if child.isKey {
                        return child
                    }
                    nodes.append(child)
                }
            }
        }
        return nil
    }
}

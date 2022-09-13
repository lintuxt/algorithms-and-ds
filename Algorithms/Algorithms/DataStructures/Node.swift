//
//  Node.swift
//  Algorithms
//
//  Created by Alexis Charytonow on 9/11/22.
//

import Foundation

public class Node {
    public var children: [Node]?
    public var name: String
    public var isKey: Bool
    
    public init(_ name: String, with children:[Node]? = nil, isKey: Bool = false) {
        if let c = children, c.isEmpty {
            self.children = nil
        } else {
            self.children = children
        }
        self.name = name
        self.isKey = isKey
    }
}

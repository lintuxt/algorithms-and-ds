//
//  BFS.swift
//  AlgorithmsTests
//
//  Created by Alexis Charytonow on 9/10/22.
//

import XCTest
import Algorithms


class BFSTests: XCTestCase {    
    func test_theKeyIsInNodeZ() {
        let tree = TreeGenerator.initTree()
        let nodeWithKey = BFSKeyFinder.findKey(in: tree)
        XCTAssertNotNil(nodeWithKey)
        if let n = nodeWithKey {
            XCTAssertEqual(n.name, "Z")
            XCTAssertTrue(n.isKey)
        }
    }
}

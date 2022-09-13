//
//  DFS.swift
//  AlgorithmsTests
//
//  Created by Alexis Charytonow on 9/11/22.
//

import XCTest
import Algorithms

class DFSTests: XCTestCase {
    func test_theKeyIsInNodeZ() {
        let tree = TreeGenerator.initTree()
        let nodeWithKey = DFSKeyFinder.findKey(in: tree)
        XCTAssertNotNil(nodeWithKey)
        if let n = nodeWithKey {
            XCTAssertEqual(n.name, "Z")
            XCTAssertTrue(n.isKey)
        }
    }
}

//
//  TreeGenerator.swift
//  Algorithms
//
//  Created by Alexis Charytonow on 9/11/22.
//

public class TreeGenerator {
    public static func initTree() -> Node {
        let rootNode = Node("rootNode", with: [
            Node("100", with: [
                Node("1", with: [
                    Node("A"), Node("B")
                ]),
                Node("2", with: [
                    Node("C"), Node("D")
                ]),
                Node("3")
            ]),
            Node("200", with: [
                Node("4", with: [
                    Node("H"), Node("I")
                ]),
                Node("5", with: [
                    Node("J"), Node("K")
                ]),
                Node("6")
            ]),
            Node("300", with: [
                Node("7"),
                Node("8"),
                Node("9", with: [
                    Node("R")
                ]),
                Node("10", with: [
                    Node("S")
                ])
            ]),
            Node("400", with: [
                Node("11", with: [
                    Node("T")
                ]),
                Node("12", with: [
                    Node("U")
                ])
            ]),
            Node("500", with: [
                Node("13", with: [
                    Node("W"), Node("X")
                ]),
                Node("14", with: [
                    Node("Y")
                ]),
                Node("15", with: [
                    Node("Z", with: nil, isKey: true)
                ])
            ])
        ])
        return rootNode
    }
}

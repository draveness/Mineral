//
//  Relation.swift
//  Mineral
//
//  Created by draveness on 11/05/2017.
//  Copyright © 2017 draveness. All rights reserved.
//

import Foundation

public class Relation<Container> {
    public let container: Container
    public let node: Node

    public init(container: Container, node: Node) {
        self.container = container
        self.node = node
    }
}

//
//  Container.swift
//  Mineral
//
//  Created by draveness on 13/04/2017.
//  Copyright © 2017 draveness. All rights reserved.
//

import Foundation

public protocol Container {
    associatedtype RelationType
    func build(closure: () -> Node) -> Relation<RelationType>
}

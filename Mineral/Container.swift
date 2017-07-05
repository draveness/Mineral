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

extension Container where Self: Node {
    @discardableResult
    public func color(_ color: UIColor, closure: (Self) -> ()) -> Self {
        view.backgroundColor = color
        closure(self)
        return self
    }

    @discardableResult
    public func size(_ size: CGSize, closure: (Self) -> ()) -> Self {
        view.size = size
        closure(self)
        return self
    }

    @discardableResult
    public func size(_ width: CGFloat, _ height: CGFloat, closure: (Self) -> ()) -> Self {
        view.size = CGSize(width: width, height: height)
        closure(self)
        return self
    }

    @discardableResult
    public func size(_ size: CGFloat, closure: (Self) -> ()) -> Self {
        view.size = CGSize(width: size, height: size)
        closure(self)
        return self
    }

}

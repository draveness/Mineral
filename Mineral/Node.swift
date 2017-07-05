//
//  MNView.swift
//  Mineral
//
//  Created by draveness on 13/04/2017.
//  Copyright © 2017 draveness. All rights reserved.
//

import Foundation

public class Node: Buildable {
    public required init() {}
    
    public func bind<VM>(viewModel: VM) -> Node {
        return self
    }
    
    public internal(set) var view: UIView = UIView()
    public let parent: Node? = nil
    
    @discardableResult
    public func color(_ color: UIColor) -> Self {
        view.backgroundColor = color
        return self
    }
    
    @discardableResult
    public func size(_ size: CGSize) -> Self {
        view.size = size
        return self
    }
    
    @discardableResult
    public func size(_ width: CGFloat, _ height: CGFloat) -> Self {
        view.size = CGSize(width: width, height: height)
        return self
    }
    
    @discardableResult
    public func size(_ size: CGFloat) -> Self {
        view.size = CGSize(width: size, height: size)
        return self
    }

    @discardableResult
    public func attachTo<T: Container>(_ container: T) -> Relation<T.RelationType> {
        return container.build { self }
    }
}


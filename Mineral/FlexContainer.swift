//
//  FlexContainer.swift
//  Mineral
//
//  Created by draveness on 18/05/2017.
//  Copyright © 2017 draveness. All rights reserved.
//

import Foundation
import YogaKit

public class FlexContainer: Node, Container {
    public override func bind<VM>(viewModel: VM) -> FlexContainer {
        return self
    }

    public func build(closure: () -> Node) -> Relation<FlexContainer> {
        let node = closure()
        view.addSubview(node.view)
        view.configureLayout { (layout) in
            layout.isEnabled = true
        }

        node.view.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = node.view.width
            layout.height = node.view.height
        }

        return Relation<FlexContainer>(container: self, node: node)
    }
}

public extension Relation where Container == FlexContainer {
    @discardableResult
    public func height(_ height: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.height = height
        }
        return self
    }

    @discardableResult
    public func width(_ width: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.width = width
        }
        return self
    }

    @discardableResult
    public func marginHorizontal(_ marginHorizontal: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.marginHorizontal = marginHorizontal
        }
        return self
    }
}

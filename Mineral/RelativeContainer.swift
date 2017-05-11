//
//  RelativeContainer.swift
//  Mineral
//
//  Created by draveness on 11/05/2017.
//  Copyright © 2017 draveness. All rights reserved.
//

import Foundation
import SnapKit

public class RelativeContainer: Node, Container {
    public override func bind<VM>(viewModel: VM) -> RelativeContainer {
        return self
    }

    @discardableResult
    public func build(closure: () -> Node) -> Relation<RelativeContainer> {
        let node = closure()
        view.addSubview(node.view)
        node.view.snp.makeConstraints { (make) in
            make.width.equalTo(node.view.width)
            make.height.equalTo(node.view.height)
        }
        return Relation<RelativeContainer>(container: self, node: node)
    }
}

public extension Node {
    public var rlt: ConstraintViewDSL {
        return ConstraintViewDSL(view: self.view)
    }
}

public extension Relation where Container == RelativeContainer {
    @discardableResult
    public func left(_ other: ConstraintRelatableTarget, offset: ConstraintOffsetTarget = 0) -> Relation {
        node.view.snp.makeConstraints { (make) in
            make.left.equalTo(other).offset(offset)
        }
        return self
    }

    @discardableResult
    public func right(_ other: ConstraintRelatableTarget, offset: ConstraintOffsetTarget = 0) -> Relation {
        node.view.snp.makeConstraints { (make) in
            make.right.equalTo(other).offset(offset)
        }
        return self
    }

    @discardableResult
    public func top(_ other: ConstraintRelatableTarget, offset: ConstraintOffsetTarget = 0) -> Relation {
        node.view.snp.makeConstraints { (make) in
            make.top.equalTo(other).offset(offset)
        }
        return self
    }

    @discardableResult
    public func bottom(_ other: ConstraintRelatableTarget, offset: ConstraintOffsetTarget = 0) -> Relation {
        node.view.snp.makeConstraints { (make) in
            make.bottom.equalTo(other).offset(offset)
        }
        return self
    }

    @discardableResult
    public func centerX(_ other: ConstraintRelatableTarget, offset: ConstraintOffsetTarget = 0) -> Relation {
        node.view.snp.makeConstraints { (make) in
            make.centerX.equalTo(other).offset(offset)
        }
        return self
    }

    @discardableResult
    public func centerY(_ other: ConstraintRelatableTarget, offset: ConstraintOffsetTarget = 0) -> Relation {
        node.view.snp.makeConstraints { (make) in
            make.centerY.equalTo(other).offset(offset)
        }
        return self
    }
}

//
//  RelativeViewController.swift
//  Mineral
//
//  Created by draveness on 11/05/2017.
//  Copyright © 2017 draveness. All rights reserved.
//

import UIKit
import Mineral
import SnapKit

class RelativeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let constraint = Builder<RelativeContainer>.build.color(UIColor.lightGray).size(self.view.frame.size)

        let node = Builder<Node>.build.color(UIColor.white).size(50)
            .attachTo(constraint)
            .left(constraint)
            .top(constraint, offset: 20).node

        Builder<Node>.build.color(UIColor.red).size(50)
            .attachTo(constraint)
            .left(node.rlt.right)
            .centerY(node)

        view.addSubview(constraint.view)
        constraint.view.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }

}

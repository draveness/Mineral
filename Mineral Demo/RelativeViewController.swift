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

        Builder<Node>.build.color(UIColor.white).size(50)
            .attachTo(constraint)
            .left(constraint)
            .top(constraint, offset: 20)

        Builder<Node>.build.color(UIColor.red).size(50)
            .attachTo(constraint)
            .left(constraint)
            .bottom(constraint, offset: -20)

        view.addSubview(constraint.view)
        constraint.view.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }

}

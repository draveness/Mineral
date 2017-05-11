//
//  AbsoluteViewController.swift
//  Mineral
//
//  Created by draveness on 11/05/2017.
//  Copyright © 2017 draveness. All rights reserved.
//

import UIKit
import Mineral

class AbsoluteViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let frame = Builder<AbsoluteContainer>.build.color(UIColor.lightGray).size(self.view.frame.size)
        Builder<Node>.build.color(UIColor.white).size(50)
            .attachTo(frame).origin(10)
        Builder<Node>.build.color(UIColor.red).size(50)
            .attachTo(frame).center(200, 300)

        view.addSubview(frame.view)
    }

}

//
//  FlexViewController.swift
//  Mineral
//
//  Created by draveness on 18/05/2017.
//  Copyright © 2017 draveness. All rights reserved.
//

import UIKit
import Mineral

class FlexViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        let flexbox = Builder<FlexContainer>.build.color(UIColor.lightGray).size(self.view.frame.size) { container in
            Builder<Node>.build
                .color(UIColor.white)
                .size(100)
                .attachTo(container)
            Builder<Node>.build.color(UIColor.red).size(100).attachTo(container)
        }

        view.addSubview(flexbox.view)

        flexbox.view.yoga.applyLayout(preservingOrigin: true)
    }

}

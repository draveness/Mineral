//
//  ViewController.swift
//  Mineral Demo
//
//  Created by draveness on 13/04/2017.
//  Copyright © 2017 draveness. All rights reserved.
//

import UIKit
import Mineral

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let frame = Frame.build {
            $0.build(Node.make.color(UIColor.white).size(50)).origin(10)
        }.color(UIColor.lightGray).size(self.view.frame.size)
        view.addSubview(frame.view)
    }
}


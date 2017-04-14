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
        let frame = Builder<Frame>.build {
            $0.color(UIColor.lightGray).size(self.view.frame.size)
            $0.build {
                Builder<Node>.build { $0.color(UIColor.white).size(50) }
                }.origin(10)
            $0.build {
                Builder<Node>.build { $0.color(UIColor.red).size(50) }
                }.center(200, 300)
        }
        view.addSubview(frame.view)
    }
}

class ViewModel {
    let globalColor = UIColor.lightGray
}

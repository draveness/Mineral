//
//  Button.swift
//  Mineral
//
//  Created by draveness on 26/05/2017.
//  Copyright © 2017 draveness. All rights reserved.
//

import UIKit

public class Button: Node {
    var button: UIButton {
        get {
            return self.view as! UIButton
        }
    }

    public required init() {
        super.init()
        self.view = UIButton()
    }
}

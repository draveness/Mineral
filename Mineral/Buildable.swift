//
//  Makable.swift
//  Mineral
//
//  Created by draveness on 14/04/2017.
//  Copyright © 2017 draveness. All rights reserved.
//

import Foundation

public protocol Buildable {
    associatedtype Element
    init()
    func bind<VM>(viewModel: VM) -> Element
}

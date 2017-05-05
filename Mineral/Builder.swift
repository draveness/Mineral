//
//  Builder.swift
//  Mineral
//
//  Created by draveness on 14/04/2017.
//  Copyright © 2017 draveness. All rights reserved.
//

import Foundation

public class Builder<T: Buildable> {
    public static func build(closure: (T) -> Void) -> T {
        let result = T()
        closure(result)
        return result
    }

    public static var build: T {
        return T()
    }
}

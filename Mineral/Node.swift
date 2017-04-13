//
//  MNView.swift
//  Mineral
//
//  Created by draveness on 13/04/2017.
//  Copyright © 2017 draveness. All rights reserved.
//

import Foundation

public class Node {
    public let view: UIView = UIView()
    
    public static var make: Node {
        return Node()
    }
    
    @discardableResult public func color(_ color: UIColor) -> Node {
        view.backgroundColor = color
        return self
    }
    
    @discardableResult public func size(_ size: CGSize) -> Node {
        view.size = size
        return self
    }
    
    @discardableResult public func size(_ width: CGFloat, _ height: CGFloat) -> Node {
        view.size = CGSize(width: width, height: height)
        return self
    }
    
    @discardableResult public func size(_ size: CGFloat) -> Node {
        view.size = CGSize(width: size, height: size)
        return self
    }
}

extension UIView {
    var size: CGSize {
        get {
            return self.frame.size
        }
        set {
            var rect = self.frame
            rect.size = newValue
            self.frame = rect
        }
    }
    
    var origin: CGPoint {
        get {
            return self.frame.origin
        }
        set {
            var rect = self.frame
            rect.origin = newValue
            self.frame = rect
        }
    }
    
    var x: CGFloat {
        get {
            return self.frame.origin.x
        }
        set {
            var rect = self.frame
            rect.origin.x = newValue
            self.frame = rect
        }
    }
    
    var y: CGFloat {
        get {
            return self.frame.origin.y
        }
        set {
            var rect = self.frame
            rect.origin.y = newValue
            self.frame = rect
        }
    }
    
    var centerX: CGFloat {
        get {
            return self.center.x
        }
        set {
            var center = self.center
            center.x = newValue
            self.center = center
        }
    }
    
    var centerY: CGFloat {
        get {
            return self.center.y
        }
        set {
            var center = self.center
            center.y = newValue
            self.center = center
        }
    }
}

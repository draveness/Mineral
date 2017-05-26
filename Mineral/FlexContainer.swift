//
//  FlexContainer.swift
//  Mineral
//
//  Created by draveness on 18/05/2017.
//  Copyright © 2017 draveness. All rights reserved.
//

import Foundation
import YogaKit

public class FlexContainer: Node, Container {
    public override func bind<VM>(viewModel: VM) -> FlexContainer {
        return self
    }

    public func build(closure: () -> Node) -> Relation<FlexContainer> {
        let node = closure()
        view.addSubview(node.view)
        view.configureLayout { (layout) in
            layout.isEnabled = true
        }

        node.view.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = node.view.width
            layout.height = node.view.height
        }

        return Relation<FlexContainer>(container: self, node: node)
    }
}

public extension Relation where Container == FlexContainer {

    @discardableResult
    public func isIncludedInLayout(_ isIncludedInLayout: Bool) -> Relation {
        node.view.configureLayout { (layout) in
            layout.isIncludedInLayout = isIncludedInLayout
        }
        return self
    }


    @discardableResult
    public func isEnabled(_ isEnabled: Bool) -> Relation {
        node.view.configureLayout { (layout) in
            layout.isEnabled = isEnabled
        }
        return self
    }


    @discardableResult
    public func direction(_ direction: YGDirection) -> Relation {
        node.view.configureLayout { (layout) in
            layout.direction = direction
        }
        return self
    }


    @discardableResult
    public func flexDirection(_ flexDirection: YGFlexDirection) -> Relation {
        node.view.configureLayout { (layout) in
            layout.flexDirection = flexDirection
        }
        return self
    }


    @discardableResult
    public func justifyContent(_ justifyContent: YGJustify) -> Relation {
        node.view.configureLayout { (layout) in
            layout.justifyContent = justifyContent
        }
        return self
    }


    @discardableResult
    public func alignContent(_ alignContent: YGAlign) -> Relation {
        node.view.configureLayout { (layout) in
            layout.alignContent = alignContent
        }
        return self
    }


    @discardableResult
    public func alignItems(_ alignItems: YGAlign) -> Relation {
        node.view.configureLayout { (layout) in
            layout.alignItems = alignItems
        }
        return self
    }


    @discardableResult
    public func alignSelf(_ alignSelf: YGAlign) -> Relation {
        node.view.configureLayout { (layout) in
            layout.alignSelf = alignSelf
        }
        return self
    }


    @discardableResult
    public func position(_ position: YGPositionType) -> Relation {
        node.view.configureLayout { (layout) in
            layout.position = position
        }
        return self
    }


    @discardableResult
    public func flexWrap(_ flexWrap: YGWrap) -> Relation {
        node.view.configureLayout { (layout) in
            layout.flexWrap = flexWrap
        }
        return self
    }


    @discardableResult
    public func overflow(_ overflow: YGOverflow) -> Relation {
        node.view.configureLayout { (layout) in
            layout.overflow = overflow
        }
        return self
    }


    @discardableResult
    public func display(_ display: YGDisplay) -> Relation {
        node.view.configureLayout { (layout) in
            layout.display = display
        }
        return self
    }


    @discardableResult
    public func flexGrow(_ flexGrow: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.flexGrow = flexGrow
        }
        return self
    }


    @discardableResult
    public func flexShrink(_ flexShrink: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.flexShrink = flexShrink
        }
        return self
    }


    @discardableResult
    public func flexBasis(_ flexBasis: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.flexBasis = flexBasis
        }
        return self
    }


    @discardableResult
    public func left(_ left: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.left = left
        }
        return self
    }


    @discardableResult
    public func top(_ top: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.top = top
        }
        return self
    }


    @discardableResult
    public func right(_ right: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.right = right
        }
        return self
    }


    @discardableResult
    public func bottom(_ bottom: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.bottom = bottom
        }
        return self
    }


    @discardableResult
    public func start(_ start: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.start = start
        }
        return self
    }


    @discardableResult
    public func end(_ end: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.end = end
        }
        return self
    }


    @discardableResult
    public func marginLeft(_ marginLeft: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.marginLeft = marginLeft
        }
        return self
    }


    @discardableResult
    public func marginTop(_ marginTop: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.marginTop = marginTop
        }
        return self
    }


    @discardableResult
    public func marginRight(_ marginRight: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.marginRight = marginRight
        }
        return self
    }


    @discardableResult
    public func marginBottom(_ marginBottom: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.marginBottom = marginBottom
        }
        return self
    }


    @discardableResult
    public func marginStart(_ marginStart: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.marginStart = marginStart
        }
        return self
    }


    @discardableResult
    public func marginEnd(_ marginEnd: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.marginEnd = marginEnd
        }
        return self
    }


    @discardableResult
    public func marginHorizontal(_ marginHorizontal: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.marginHorizontal = marginHorizontal
        }
        return self
    }


    @discardableResult
    public func marginVertical(_ marginVertical: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.marginVertical = marginVertical
        }
        return self
    }


    @discardableResult
    public func margin(_ margin: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.margin = margin
        }
        return self
    }


    @discardableResult
    public func paddingLeft(_ paddingLeft: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.paddingLeft = paddingLeft
        }
        return self
    }


    @discardableResult
    public func paddingTop(_ paddingTop: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.paddingTop = paddingTop
        }
        return self
    }


    @discardableResult
    public func paddingRight(_ paddingRight: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.paddingRight = paddingRight
        }
        return self
    }


    @discardableResult
    public func paddingBottom(_ paddingBottom: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.paddingBottom = paddingBottom
        }
        return self
    }


    @discardableResult
    public func paddingStart(_ paddingStart: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.paddingStart = paddingStart
        }
        return self
    }


    @discardableResult
    public func paddingEnd(_ paddingEnd: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.paddingEnd = paddingEnd
        }
        return self
    }


    @discardableResult
    public func paddingHorizontal(_ paddingHorizontal: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.paddingHorizontal = paddingHorizontal
        }
        return self
    }


    @discardableResult
    public func paddingVertical(_ paddingVertical: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.paddingVertical = paddingVertical
        }
        return self
    }


    @discardableResult
    public func padding(_ padding: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.padding = padding
        }
        return self
    }


    @discardableResult
    public func borderLeftWidth(_ borderLeftWidth: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.borderLeftWidth = borderLeftWidth
        }
        return self
    }


    @discardableResult
    public func borderTopWidth(_ borderTopWidth: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.borderTopWidth = borderTopWidth
        }
        return self
    }


    @discardableResult
    public func borderRightWidth(_ borderRightWidth: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.borderRightWidth = borderRightWidth
        }
        return self
    }


    @discardableResult
    public func borderBottomWidth(_ borderBottomWidth: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.borderBottomWidth = borderBottomWidth
        }
        return self
    }


    @discardableResult
    public func borderStartWidth(_ borderStartWidth: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.borderStartWidth = borderStartWidth
        }
        return self
    }


    @discardableResult
    public func borderEndWidth(_ borderEndWidth: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.borderEndWidth = borderEndWidth
        }
        return self
    }


    @discardableResult
    public func borderWidth(_ borderWidth: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.borderWidth = borderWidth
        }
        return self
    }


    @discardableResult
    public func width(_ width: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.width = width
        }
        return self
    }


    @discardableResult
    public func height(_ height: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.height = height
        }
        return self
    }


    @discardableResult
    public func minWidth(_ minWidth: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.minWidth = minWidth
        }
        return self
    }


    @discardableResult
    public func minHeight(_ minHeight: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.minHeight = minHeight
        }
        return self
    }


    @discardableResult
    public func maxWidth(_ maxWidth: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.maxWidth = maxWidth
        }
        return self
    }
    
    
    @discardableResult
    public func maxHeight(_ maxHeight: CGFloat) -> Relation {
        node.view.configureLayout { (layout) in
            layout.maxHeight = maxHeight
        }
        return self
    }
    
}

# Mineral

A library used to separate concerns from the original UIKit framework.

## Node

```swift
Builder<Node>.build.color(UIColor.white).size(50)
            .attachTo(frame).origin(10)
```

## Container

An abstract protocol

```swift
public protocol Container {
    associatedtype RelationType
    func build(closure: () -> Node) -> Relation<RelationType>
}
```

### AbsoluteContainer

```swift
let frame = Builder<AbsoluteContainer>.build.color(UIColor.lightGray).size(self.view.frame.size)
Builder<Node>.build.color(UIColor.white).size(50)
    .attachTo(frame).origin(10)
Builder<Node>.build.color(UIColor.red).size(50)
    .attachTo(frame).center(200, 300)
```

### RelativeContainer

```swift
let constraint = Builder<RelativeContainer>.build.color(UIColor.lightGray).size(self.view.frame.size)

let node = Builder<Node>.build.color(UIColor.white).size(50)
    .attachTo(constraint)
    .left(constraint)
    .top(constraint, offset: 20).node

Builder<Node>.build.color(UIColor.red).size(50)
    .attachTo(constraint)
    .left(node.rlt.right)
    .centerY(node)
```

### FlexContainer

```swift
let flexbox = Builder<FlexContainer>.build.color(UIColor.lightGray).size(self.view.frame.size) { container in
    Builder<Node>.build
        .color(UIColor.white)
        .size(100)
        .attachTo(container)
    Builder<Node>.build.color(UIColor.red).size(100).attachTo(container)
}

view.addSubview(flexbox.view)
```



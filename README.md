<p align="center">
    <img src="simple_constraints.png" width="1000" alt="SimpleConstraints"/>
</p>

# SimpleConstraints

SimpleConstraints is a Swift library designed to simplify the process of creating and managing constraints in UIKit. It provides a set of utilities that make it easier to align and position UI elements in your iOS applications.

## Features

- Easy to use API for creating and managing constraints.
- Support for safe area constraints.
- Convenience methods for common layout tasks.
- Each function sets all needed constraints to display an object

### Preview

Let's add an image to a view using the regular UIKit constraints with the following attributes:
- Said image shall be pinned to the top using `safeAreaLayoutGuide`.
- The right and left anchor shall be pinned to the horizontal edges of the parent view.
- The aspect ratio shall be 1:1.

Contraints using native UIKit:
```swift
view.addSubview(image)
image.topAnchor.constraint(equalTo: view.topAnchor),
image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
image.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
image.heightAnchor.constraint(equalTo: image.widthAnchor, multiplier: 1/1)
```
Constraints using **SimpleConstraints**
```swift
view.edgesAndRatio(premiumImage, top: nil, left: .left(view, 0), right: .right(view, 0), aspectRatio: 1)
```

## Installation

SimpleConstraints can currently only be added as a Swift Package.

## Usage
// TBD

## TBD
- Unit Tests
- Added functionality for unsafe constraints
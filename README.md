# EasyButton

![Swift version](https://img.shields.io/badge/swift-4.2-orange.svg)
![CocoaPods compatible](https://cocoapod-badges.herokuapp.com/v/EasyButton/badge.png)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)


UIButton extension for setting styles easily

## Usage
[Example](https://github.com/morishin/EasyButton/tree/master/Demo.playground)
```swift
// Set a darker color than the background color to the highlighted background color automatically
let lightColorButton = UIButton.button(title: "Hello World", titleColor: .white, backgroundColor: .orange, cornerRadius: 6)

// Set a lighter color than the background color to the highlighted background color automatically
let darkColorButton = UIButton.button(title: "Hello World", titleColor: .white, backgroundColor: .darkGray, cornerRadius: 6)
```

<img width="400" alt="2017-12-03 1 13 44" src="https://user-images.githubusercontent.com/1413408/33931973-048ce58a-e035-11e7-930b-73fa7d04cda0.gif">

## Installation
### Carthage
Cartfile

```
github "morishin/EasyButton"
```

### CocoaPods
Podfile

```ruby
pod 'EasyButton'
```

## LICENSE
MIT

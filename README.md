# HGSwiftExtension

![Language](https://img.shields.io/badge/swift-4.2-orange.svg)
![Platform](https://img.shields.io/cocoapods/p/HGSwiftExtension.svg)
[![](https://img.shields.io/cocoapods/v/HGSwiftExtension.svg)](https://cocoapods.org/pods/HGSwiftExtension)
[![License](https://img.shields.io/github/license/presto95/HGSwiftExtension.svg)](https://github.com/presto95/HGSwiftExtension/blob/master/LICENSE)

Presto's Useful Swift Extension Collection 👨🏻‍💻

## Installation

Use Cocoapods.

```ruby
pod 'HGSwiftExtension'
```

## Use Case

### UIAlertController

```swift
UIAlertController
	.alert(title: "Title", message: "Message", style: .actionSheet)
	.textField(nil)
	.action(title: "Action", style: .cancel) { action, textFields in
		if let textFields = textFields {
			print(textFields.first?.text ?? "?")
		}
	}
	.present(to: self, animated: false, handler: nil)
```

### UIViewController

```swift
UIViewController
	.instantiate(fromStoryboard: "Main", identifier: "MainViewController")
	.present(to: self, transitionStyle: .crossDissolve, animated: true)
```

### UIColor

```swift
let rgb80: UIColor = .init(rgb: 80)
```

### CALayer

```swift
let view = UIView()
view.layer.applyGradient(
    colors: [UIColor.white.cgColor, UIColor.clear.cgColor],
    locations: [0, 1],
    startPoint: .init(x: 0, y: 0.5),
    endPoint: .init(x: 1, y: 0.5)
)
```

## License

```text
MIT License

Copyright (c) 2019 Han Gyeol LEE

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

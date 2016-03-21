# MissingAnchors

[![CI Status](http://img.shields.io/travis/k06a/MissingAnchors.svg?style=flat)](https://travis-ci.org/k06a/MissingAnchors)
[![Version](https://img.shields.io/cocoapods/v/MissingAnchors.svg?style=flat)](http://cocoapods.org/pods/MissingAnchors)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](https://img.shields.io/cocoapods/l/MissingAnchors.svg?style=flat)](http://cocoapods.org/pods/MissingAnchors)
[![Platform](https://img.shields.io/cocoapods/p/MissingAnchors.svg?style=flat)](http://cocoapods.org/pods/MissingAnchors)

Backport of Apple NSLayoutAnchor API to iOS7 and some missings like `sizeAnchor` and `edgesAnchor`.

## Usage

###Backported all default anchor methods:
- `view.leadingAnchor`
- `view.trailingAnchor`
- `view.leftAnchor`
- `view.rightAnchor`
- `view.topAnchor`
- `view.bottomAnchor`
- `view.widthAnchor`
- `view.heightAnchor`
- `view.centerXAnchor`
- `view.centerYAnchor`
- `view.firstBaselineAnchor`
- `view.lastBaselineAnchor`

###Additional implemented anchors:
- `view.sizeAnchor`
- `view.edgesAnchor`

With some additional methods on anchors:

- `anchor.withTopAnchor`
- `anchor.withBottomAnchor`
- `anchor.withLeadingAnchor`
- `anchor.withTrailingAnchor`
- `edgesAnchor.withoutTopAnchor`
- `edgesAnchor.withoutBottomAnchor`
- `edgesAnchor.withoutLeadingAnchor`
- `edgesAnchor.withoutTrailingAnchor`

Usage example:
```objective-c
#import <MissingAnchor/MissingAnchor.h>
...
[view1.edgesAnchor constraintsEqualToConstant:UIEdgeInsetsMake(10, 20, 30, 40)].active = YES;
[view2.topAnchor.withBottomAnchor constraintsEqualToConstant:UIEdgeInsetsMake(10, 0, 30, 0)].active = YES;
[view3.edgesAnchor.withoutTopAnchor constraintsEqualToConstant:UIEdgeInsetsMake(0, 20, 30, 40)].active = YES;
```

###Modern active property:
```objective-c
#import <MissingAnchor/MissingAnchor.h>
...
@[[view1.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:10],
  [view1.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:20],
  [view1.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-30],
  [view1.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-40]].active = YES;
```

## Requirements

## Installation

MissingAnchors is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MissingAnchors'
pod 'MissingAnchors/NSLayoutAnchor' # if you need a backport of NSLayoutAnchor to iOS 7
```

Or, if you’re using [Carthage](https://github.com/Carthage/Carthage), simply add MissingAnchors to your `Cartfile`:

```
github "k06a/MissingAnchors"
```

## Author

Anton Bukov, k06aaa@gmail.com

## License

MissingAnchors is available under the MIT license. See the LICENSE file for more info.

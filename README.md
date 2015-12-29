# MissingAnchors

[![CI Status](http://img.shields.io/travis/k06a/MissingAnchors.svg?style=flat)](https://travis-ci.org/k06a/MissingAnchors)
[![Version](https://img.shields.io/cocoapods/v/MissingAnchors.svg?style=flat)](http://cocoapods.org/pods/MissingAnchors)
[![License](https://img.shields.io/cocoapods/l/MissingAnchors.svg?style=flat)](http://cocoapods.org/pods/MissingAnchors)
[![Platform](https://img.shields.io/cocoapods/p/MissingAnchors.svg?style=flat)](http://cocoapods.org/pods/MissingAnchors)

## Usage

Right now you are able to use following anchors:
- `view.sizeAnchor`
- `view.edgesAnchor`

Just use like this (with `edgesAnchor`):
```objective-c
#import <MissingAnchor/MissingAnchor.h>
...
UIImageView *imageView1 = [[UIImageView alloc] init];
[self.view addSubview:imageView1];
imageView1.translatesAutoresizingMaskIntoConstraints = NO;

[imageView1.edgesAnchor constraintsEqualToConstant:UIEdgeInsetsMake(10, 20, 30, 40)].active = YES;
```
Or like this (with `NSArray` setting `active`):
```objective-c
#import <MissingAnchor/MissingAnchor.h>
...
UIImageView *imageView2 = [[UIImageView alloc] init];
[self.view addSubview:imageView2];
imageView2.translatesAutoresizingMaskIntoConstraints = NO;

@[[imageView2.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:10],
  [imageView2.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:20],
  [imageView2.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-30],
  [imageView2.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-40]].active = YES;
```
Some examples:
```
[view.edgesAnchor.withoutTopAnchor constraintsEqualToConstant:UIEdgeInsetsMake(0, 20, 30, 40)].active = YES;
[view.topAnchor.withBottomAnchor constraintsEqualToConstant:UIEdgeInsetsMake(10, 0, 30, 0)].active = YES;
```

## Requirements

## Installation

MissingAnchors is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MissingAnchors'
```

## Author

Anton Bukov, k06aaa@gmail.com

## License

MissingAnchors is available under the MIT license. See the LICENSE file for more info.

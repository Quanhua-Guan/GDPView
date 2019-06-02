# GDPView

[![CI Status](https://img.shields.io/travis/yuyuan/GDPView.svg?style=flat)](https://travis-ci.org/yuyuan/GDPView)
[![Version](https://img.shields.io/cocoapods/v/GDPView.svg?style=flat)](https://cocoapods.org/pods/GDPView)
[![License](https://img.shields.io/cocoapods/l/GDPView.svg?style=flat)](https://cocoapods.org/pods/GDPView)
[![Platform](https://img.shields.io/cocoapods/p/GDPView.svg?style=flat)](https://cocoapods.org/pods/GDPView)

## How to use

To run the example project, clone the repo, and run `pod install` from the Example directory first.
### 1. Create a customized view : GDPDemoView
[GDPDemoView.h](./GDPDemoView.h) 
[GDPDemoView.m](./GDPDemoView.m)
[GDPDemoView.xib](./GDPDemoView.xib)
### 2. Go to `GDPDemoView.xib`, set `File's Owner` as `GDPDemoView` class.  

![1. files owner set to gdpdemoview](./images/1. files owner set to gdpdemoview.png)

### 3. Link `File's Owner`'s `contentView` to the view in `GDPDemoView.xib`.
![2. link contentView of files owner to the view in the xib](./images/2. link contentView of files owner to the view in the xib.png)

### 4. Do what event you want in the xib file .... (Yeah)

### 5. Use `GDPDemoView` like a `UIView`.
#### (1) By code
```objc
GDPDemoView *demoView = [[GDPDemoView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
demoView.detail = @"GDPDemoView, Init by code!";
demoView.contentView.backgroundColor = UIColor.redColor;
[self.view addSubview:demoView];
```
#### (2) In Xib/Storyboard
![use in xib](./images/use in xib.png)

## Requirements
iOS 8+
Xcode 10+

## Installation

GDPView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'GDPView'
```

## Author

yuyuan, yuyuan@gaoding.com

## License

GDPView is available under the MIT license. See the LICENSE file for more info.

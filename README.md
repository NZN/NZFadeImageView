#NZFadeImageView ![License MIT](https://go-shields.herokuapp.com/license-MIT-blue.png)

This class performs the rotation of images with effect fade-in, fade-out in a given time interval.
This effect is usually applied in the application initial screen, usually on the login screen.

Video example:

<p align="center">
  <a href="http://youtu.be/EomeqhtkgYY"><img src="http://s27.postimg.org/xij2mxp4j/NZFade_Image_View.png" alt="NZFadeImageView" title="NZFadeImageView"></a>
</p>

[![Build Status](https://api.travis-ci.org/NZN/NZFadeImageView.png)](https://api.travis-ci.org/NZN/NZFadeImageView.png)
[![Cocoapods](https://cocoapod-badges.herokuapp.com/v/NZFadeImageView/badge.png)](http://beta.cocoapods.org/?q=NZFadeImageView)
[![Cocoapods](https://cocoapod-badges.herokuapp.com/p/NZFadeImageView/badge.png)](http://beta.cocoapods.org/?q=NZFadeImageView)

## Requirements

NZFadeImageView works on iOS 5.0+ version and is compatible with ARC projects. It depends on the following Apple frameworks, which should already be included with most Xcode templates:

* Foundation.framework
* UIKit.framework

You will need LLVM 3.0 or later in order to build NZFadeImageView.

## Adding NZFadeImageView to your project

### Cocoapods

[CocoaPods](http://cocoapods.org) is the recommended way to add NZFadeImageView to your project.

* Add a pod entry for NZFadeImageView to your Podfile `pod 'NZFadeImageView', '~> 0.0.1'`
* Install the pod(s) by running `pod install`.

### Source files

Alternatively you can directly add source files to your project.

1. Download the [latest code version](https://github.com/NZN/NZFadeImageView/archive/master.zip) or add the repository as a git submodule to your git-tracked project.
2. Open your project in Xcode, then drag and drop all files at `NZFadeImageView` folder onto your project (use the "Product Navigator view"). Make sure to select Copy items when asked if you extracted the code archive outside of your project.

## Usage

* Change `Custom Class` name at Storyboard and link the image view object to your View Controller class

<p align="center">
  <img src="http://s9.postimg.org/61wrm1173/NZFade_Image_View.png" alt="NZFadeImageView" title="NZFadeImageView">
</p>

* Create plist `NZFadeImageView-Images.plist` and add images name at root array:

<p align="center">
  <img src="http://s8.postimg.org/ctu43a8z9/NZFade_Image_View.png" alt="NZFadeImageView" title="NZFadeImageView">
</p>

* Simple example of use in `UIViewController.m`:

```objective-c
@interface UIViewController ()

@property (strong, nonatomic) IBOutlet NZFadeImageView *fadeView;

@end



@implementation UIViewController

// default animate interval: 20.0 seconds
// default animate duration: 00.7 seconds

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.fadeView startAnimation];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    [self.fadeView stopAnimation];
}

- (void)viewDidUnload
{
    [self setFadeView:nil];
    [super viewDidUnload];
}

@end
```

* Change animation duration or/and animate interval:

```objective-c
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.fadeView setAnimationDuration:2.25];
    [self.fadeView setAnimateInterval:4.5];
}
```

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each NZFadeImageView release can be found on the [wiki](https://github.com/NZN/NZFadeImageView/wiki/Change-log).

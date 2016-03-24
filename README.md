# NetworkActivityIndicatorManager

[![Build Status](https://travis-ci.org/alphatroya/NetworkActivityIndicatorManager.svg?branch=master)](https://travis-ci.org/alphatroya/NetworkActivityIndicatorManager)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![codebeat badge](https://codebeat.co/badges/b9f64cba-baea-4ac6-ac9c-eedf093a72fe)](https://codebeat.co/projects/github-com-alphatroya-networkactivityindicatormanager)

## Usage

Simple UIApplication's NetworkActivityIndicator counter. Use `addActivity` method before request for increase counter and show application network activity indicator, after finished request decrease counter by method `removeActivity`. If counter reach 0 network activity indicator will be hidden.

## Installation

### Carthage
To integrate manager into your Xcode project using Carthage, specify it in your Cartfile:

```ogdl
github "alphatroya/NetworkActivityIndicatorManager"
```

Run `carthage update` to build the framework and drag the built NetworkActivityIndicatorManager.framework into your Xcode project.

## Author
Alexey Korolev, alphatroya@gmail.com

## License
NetworkActivityIndicatorManager is available under the MIT license. See the LICENSE file for more info. 

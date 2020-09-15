# NetworkActivityIndicatorManager

[![Build Status](https://travis-ci.org/alphatroya/NetworkActivityIndicatorManager.svg?branch=master)](https://travis-ci.org/alphatroya/NetworkActivityIndicatorManager)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![codebeat badge](https://codebeat.co/badges/b9f64cba-baea-4ac6-ac9c-eedf093a72fe)](https://codebeat.co/projects/github-com-alphatroya-networkactivityindicatormanager)

## Usage

Simple UIApplication's NetworkActivityIndicator counter. Use `addActivity` method before request for increase counter and show application network activity indicator, after finished request decrease counter by method `removeActivity`. If counter reach 0 network activity indicator will be hidden.

## Installation

### Swift Package Manager (required Xcode 11)

1. Select File > Swift Packages > Add Package Dependency. Enter `https://github.com/alphatroya/NetworkActivityIndicatorManager` in the "Choose Package Repository" dialog.
2. In the next page, specify the version resolving rule as "Up to Next Major" with "2.0" as its earliest version.
3. After Xcode checking out the source and resolving the version, you can choose the "NetworkActivityIndicatorManager" library and add it to your app target.

## Author
Alexey Korolev, alphatroya@gmail.com

## License
NetworkActivityIndicatorManager is available under the MIT license. See the LICENSE file for more info. 

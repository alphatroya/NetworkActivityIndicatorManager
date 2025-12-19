# NetworkActivityIndicatorManager

## Usage

A simple counter for UIApplication's NetworkActivityIndicator. Use the `addActivity` method before a request to increase the counter and show the application's network activity indicator. After a request finishes, decrease the counter using the `removeActivity` method. If the counter reaches 0, the network activity indicator will be hidden.

## Installation

### Swift Package Manager (required Xcode 11)

1. Select File > Swift Packages > Add Package Dependency. Enter `https://github.com/alphatroya/NetworkActivityIndicatorManager` in the "Choose Package Repository" dialog.
2. In the next page, specify the version resolving rule as "Up to Next Major" with "2.0" as its earliest version.
3. After Xcode checking out the source and resolving the version, you can choose the "NetworkActivityIndicatorManager" library and add it to your app target.



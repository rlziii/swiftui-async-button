# swiftui-async-button

Wrapper initializers for SwiftUI `Button` that allow async `action` arguments (i.e. `asyncAction`) instead of the built-in synchronous actions.

## Usage

Add the following as a package in your `Package.swift` file or Xcode project:
```
git@github.com:rlziii/swiftui-async-button.git
```

Then simply `import SwiftUIAsyncButton` in a file that needs to use one of the new `Button` initializers (see below).

## Initializers

All native SwiftUI `Button` initializers have `asyncAction` equivalents via this package.
As in: any initializer that has an `action`-named parameter has an `asyncAction`-named parameter now as well.
Therefore a `Button` can be used in this kind of way (or using a similar initializer):

```swift
Button("Some Title", asyncAction: someAsyncFunction)
```

Or using trailing-closure syntax:

```swift
Button("Some Title") {
  await someAsyncFunction()
}
```

## Minimum Deployment Targets

macOS: `10.15`  
iOS/iPadOS: `13.0`  
tvOS: `13.0`  
watchOS: `6.0`

However, some initializers (i.e. those with support for `ButtonRole`) require:

macOS: `12.0`  
iOS/iPadOS: `15.0`  
tvOS: `15.0`  
watchOS: `8.0`

## License

MIT License. See `LICENSE` file for more details.

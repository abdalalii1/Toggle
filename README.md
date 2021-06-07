# Toggle

How often do you need to handle ternary checks in your SwiftUI views? This can become cumbersome specially if you have 
some kind of theming logic and many view modifiers that rely on said values. One way of simplifying this is to use `Toggle`.

### Example

```swift
struct ExampleView: View {
  @State var isAnimating = false
  @State var rotation = Toggle<Angle>(on: .init(degrees: -180), off: .zero)

  var body: some View {
    VStack {
      Button(action: {
        withAnimation {
          isAnimating.toggle()
        }
      }, label: {
        Text("Animate Me")
      })
      .rotationEffect(rotation.value(state: isAnimating))
    }
  }
}
```

# Installation

Swift Package Manager:

```swift
dependencies: [
  .package(url: "https://github.com/abdalaliii/Toggle.git")
]
```

## License

**Toggle** is available under the MIT license. See the LICENSE file for more info.

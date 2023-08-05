# CGPoint, CGSize, CGRect
## View의 위치와 크기를 결정하는 법
View의 시작 위치를 잡기 위해 x, y 좌표가 필요 어느 크기만큼 그릴지 width, height가 필요
## (x, y) 좌표를 설정하는 CGPoint

CGPoint는 View의 위치뿐 아니라 x, y를 나타내야 할 때 사용.

```swift
public struct CGPoint{
    public var x: CGFloat
    public var y: CGFloat
    public init()
    public init(x: CGFloat, y: CGFloat)
}

//실제 사용
let pos: CGPoint = .init(x:100, y: 200)
```
## (width, height) 사이즈를 설정하는 CGSize
```swift
public struct CGSize{
    public var width: CGFloat
    public var height: CGFloat
    public init()
    public init(width: CGFloat, height: CGFloat)
}

//실제 사용
let size: CGSize = .init(width:100, height: 200)
```
## CGSize와 CGPoint를 섞은 CGRect
```swift
public struct CGRect{
    public var origin: CGPoint
    public var size: CGSize
    public init()
    public init(origin: CGPoint, size: CGSize)
}

//실제 사용
let rect: CGRect = .init(x:100, y: 200, width: 150, height: 200)
```
**CGRect** x, y, width, height를 한번에 정의

@available(OSX 10.11, *)
class GKObstacle : NSObject {
  init()
}
@available(OSX 10.11, *)
class GKCircleObstacle : GKObstacle {
  var radius: Float
  var position: vector_float2
  init(radius: Float)
  convenience init()
}
@available(OSX 10.11, *)
class GKPolygonObstacle : GKObstacle {
  var vertexCount: Int { get }
  init(points: UnsafeMutablePointer<vector_float2>, count numPoints: Int)
  func vertexAtIndex(index: Int) -> vector_float2
  convenience init()
}
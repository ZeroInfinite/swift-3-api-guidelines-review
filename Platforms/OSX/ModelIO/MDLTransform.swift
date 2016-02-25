
@available(OSX 10.11, *)
protocol MDLTransformComponent : MDLComponent {
  var matrix: matrix_float4x4 { get set }
  var minimumTime: NSTimeInterval { get }
  var maximumTime: NSTimeInterval { get }
  optional func setLocalTransform(_ transform: matrix_float4x4, forTime time: NSTimeInterval)
  optional func setLocalTransform(_ transform: matrix_float4x4)
  optional func localTransformAtTime(_ time: NSTimeInterval) -> matrix_float4x4
  optional static func globalTransformWithObject(_ object: MDLObject, atTime time: NSTimeInterval) -> matrix_float4x4
}
@available(OSX 10.11, *)
class MDLTransform : NSObject, MDLTransformComponent {
  init(identity identity: ())
  convenience init(transformComponent component: MDLTransformComponent)
  convenience init(matrix matrix: matrix_float4x4)
  func setIdentity()
  func translationAtTime(_ time: NSTimeInterval) -> vector_float3
  func rotationAtTime(_ time: NSTimeInterval) -> vector_float3
  func shearAtTime(_ time: NSTimeInterval) -> vector_float3
  func scaleAtTime(_ time: NSTimeInterval) -> vector_float3
  func setTranslation(_ translation: vector_float3, forTime time: NSTimeInterval)
  func setRotation(_ rotation: vector_float3, forTime time: NSTimeInterval)
  func setShear(_ shear: vector_float3, forTime time: NSTimeInterval)
  func setScale(_ scale: vector_float3, forTime time: NSTimeInterval)
  func rotationMatrixAtTime(_ time: NSTimeInterval) -> matrix_float4x4
  var translation: vector_float3
  var rotation: vector_float3
  var shear: vector_float3
  var scale: vector_float3
  @available(OSX 10.11, *)
  var matrix: matrix_float4x4
  @available(OSX 10.11, *)
  var minimumTime: NSTimeInterval { get }
  @available(OSX 10.11, *)
  var maximumTime: NSTimeInterval { get }
  @available(OSX 10.11, *)
  func setLocalTransform(_ transform: matrix_float4x4, forTime time: NSTimeInterval)
  @available(OSX 10.11, *)
  func setLocalTransform(_ transform: matrix_float4x4)
  @available(OSX 10.11, *)
  func localTransformAtTime(_ time: NSTimeInterval) -> matrix_float4x4
  @available(OSX 10.11, *)
  class func globalTransformWithObject(_ object: MDLObject, atTime time: NSTimeInterval) -> matrix_float4x4
}

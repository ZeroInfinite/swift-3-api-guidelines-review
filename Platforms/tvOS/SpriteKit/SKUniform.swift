
@available(tvOS 8.0, *)
enum SKUniformType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Float
  case FloatVector2
  case FloatVector3
  case FloatVector4
  case FloatMatrix2
  case FloatMatrix3
  case FloatMatrix4
  case Texture
}
@available(tvOS 8.0, *)
class SKUniform : NSObject, NSCopying, NSCoding {
  convenience init(name: String, texture: SKTexture)
  var name: String { get }
  var uniformType: SKUniformType { get }
  var textureValue: SKTexture?
  var floatValue: Float
  var floatVector2Value: GLKVector2
  var floatVector3Value: GLKVector3
  var floatVector4Value: GLKVector4
  var floatMatrix2Value: GLKMatrix2
  var floatMatrix3Value: GLKMatrix3
  var floatMatrix4Value: GLKMatrix4
  init(name: String)
  init(name: String, texture: SKTexture?)
  init(name: String, float value: Float)
  init(name: String, floatVector2 value: GLKVector2)
  init(name: String, floatVector3 value: GLKVector3)
  init(name: String, floatVector4 value: GLKVector4)
  init(name: String, floatMatrix2 value: GLKMatrix2)
  init(name: String, floatMatrix3 value: GLKMatrix3)
  init(name: String, floatMatrix4 value: GLKMatrix4)
  init()
  @available(tvOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
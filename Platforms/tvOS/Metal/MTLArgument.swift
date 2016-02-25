
@available(tvOS 8.0, *)
enum MTLDataType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case Struct
  case Array
  case Float
  case Float2
  case Float3
  case Float4
  case Float2x2
  case Float2x3
  case Float2x4
  case Float3x2
  case Float3x3
  case Float3x4
  case Float4x2
  case Float4x3
  case Float4x4
  case Half
  case Half2
  case Half3
  case Half4
  case Half2x2
  case Half2x3
  case Half2x4
  case Half3x2
  case Half3x3
  case Half3x4
  case Half4x2
  case Half4x3
  case Half4x4
  case Int
  case Int2
  case Int3
  case Int4
  case UInt
  case UInt2
  case UInt3
  case UInt4
  case Short
  case Short2
  case Short3
  case Short4
  case UShort
  case UShort2
  case UShort3
  case UShort4
  case Char
  case Char2
  case Char3
  case Char4
  case UChar
  case UChar2
  case UChar3
  case UChar4
  case Bool
  case Bool2
  case Bool3
  case Bool4
}
@available(tvOS 8.0, *)
enum MTLArgumentType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Buffer
  case ThreadgroupMemory
  case Texture
  case Sampler
}
@available(tvOS 8.0, *)
enum MTLArgumentAccess : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case ReadOnly
  case ReadWrite
  case WriteOnly
}
@available(tvOS 8.0, *)
class MTLStructMember : NSObject {
  var name: String { get }
  var offset: Int { get }
  var dataType: MTLDataType { get }
  func structType() -> MTLStructType?
  func arrayType() -> MTLArrayType?
}
@available(tvOS 8.0, *)
class MTLStructType : NSObject {
  var members: [MTLStructMember] { get }
  func memberByName(_ name: String) -> MTLStructMember?
}
@available(tvOS 8.0, *)
class MTLArrayType : NSObject {
  var arrayLength: Int { get }
  var elementType: MTLDataType { get }
  var stride: Int { get }
  func elementStructType() -> MTLStructType?
  func elementArrayType() -> MTLArrayType?
}
@available(tvOS 8.0, *)
class MTLArgument : NSObject {
  var name: String { get }
  var type: MTLArgumentType { get }
  var access: MTLArgumentAccess { get }
  var index: Int { get }
  var active: Bool { get }
  var bufferAlignment: Int { get }
  var bufferDataSize: Int { get }
  var bufferDataType: MTLDataType { get }
  var bufferStructType: MTLStructType { get }
  var threadgroupMemoryAlignment: Int { get }
  var threadgroupMemoryDataSize: Int { get }
  var textureType: MTLTextureType { get }
  var textureDataType: MTLDataType { get }
}

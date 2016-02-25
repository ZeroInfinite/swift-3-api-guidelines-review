
struct NSDataReadingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var DataReadingMappedIfSafe: NSDataReadingOptions { get }
  static var DataReadingUncached: NSDataReadingOptions { get }
  @available(watchOS 2.0, *)
  static var DataReadingMappedAlways: NSDataReadingOptions { get }
  static var DataReadingMapped: NSDataReadingOptions { get }
  static var MappedRead: NSDataReadingOptions { get }
  static var UncachedRead: NSDataReadingOptions { get }
}
struct NSDataWritingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var DataWritingAtomic: NSDataWritingOptions { get }
  @available(watchOS 2.0, *)
  static var DataWritingWithoutOverwriting: NSDataWritingOptions { get }
  @available(watchOS 2.0, *)
  static var DataWritingFileProtectionNone: NSDataWritingOptions { get }
  @available(watchOS 2.0, *)
  static var DataWritingFileProtectionComplete: NSDataWritingOptions { get }
  @available(watchOS 2.0, *)
  static var DataWritingFileProtectionCompleteUnlessOpen: NSDataWritingOptions { get }
  @available(watchOS 2.0, *)
  static var DataWritingFileProtectionCompleteUntilFirstUserAuthentication: NSDataWritingOptions { get }
  @available(watchOS 2.0, *)
  static var DataWritingFileProtectionMask: NSDataWritingOptions { get }
  static var AtomicWrite: NSDataWritingOptions { get }
}
@available(watchOS 2.0, *)
struct NSDataSearchOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Backwards: NSDataSearchOptions { get }
  static var Anchored: NSDataSearchOptions { get }
}
@available(watchOS 2.0, *)
struct NSDataBase64EncodingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Encoding64CharacterLineLength: NSDataBase64EncodingOptions { get }
  static var Encoding76CharacterLineLength: NSDataBase64EncodingOptions { get }
  static var EncodingEndLineWithCarriageReturn: NSDataBase64EncodingOptions { get }
  static var EncodingEndLineWithLineFeed: NSDataBase64EncodingOptions { get }
}
@available(watchOS 2.0, *)
struct NSDataBase64DecodingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var IgnoreUnknownCharacters: NSDataBase64DecodingOptions { get }
}
class NSData : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var length: Int { get }
  var bytes: UnsafePointer<Void> { get }
  func copyWithZone(_ zone: NSZone) -> AnyObject
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSData {
  func getBytes(_ buffer: UnsafeMutablePointer<Void>, length length: Int)
  func getBytes(_ buffer: UnsafeMutablePointer<Void>, range range: NSRange)
  func isEqualToData(_ other: NSData) -> Bool
  func subdataWithRange(_ range: NSRange) -> NSData
  func writeToFile(_ path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeToURL(_ url: NSURL, atomically atomically: Bool) -> Bool
  func writeToFile(_ path: String, options writeOptionsMask: NSDataWritingOptions) throws
  func writeToURL(_ url: NSURL, options writeOptionsMask: NSDataWritingOptions) throws
  @available(watchOS 2.0, *)
  func rangeOfData(_ dataToFind: NSData, options mask: NSDataSearchOptions, range searchRange: NSRange) -> NSRange
  @available(watchOS 2.0, *)
  func enumerateByteRangesUsingBlock(_ block: (UnsafePointer<Void>, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
extension NSData {
  init(bytes bytes: UnsafePointer<Void>, length length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length length: Int, freeWhenDone b: Bool)
  @available(watchOS 2.0, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length length: Int, deallocator deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)?)
  init(contentsOfFile path: String, options readOptionsMask: NSDataReadingOptions) throws
  init(contentsOfURL url: NSURL, options readOptionsMask: NSDataReadingOptions) throws
  init?(contentsOfFile path: String)
  init?(contentsOfURL url: NSURL)
  init(data data: NSData)
}
extension NSData {
  @available(watchOS 2.0, *)
  init?(base64EncodedString base64String: String, options options: NSDataBase64DecodingOptions)
  @available(watchOS 2.0, *)
  func base64EncodedStringWithOptions(_ options: NSDataBase64EncodingOptions) -> String
  @available(watchOS 2.0, *)
  init?(base64EncodedData base64Data: NSData, options options: NSDataBase64DecodingOptions)
  @available(watchOS 2.0, *)
  func base64EncodedDataWithOptions(_ options: NSDataBase64EncodingOptions) -> NSData
}
extension NSData {
  @available(watchOS, introduced=2.0, deprecated=2.0, message="This method is unsafe because it could potentially cause buffer overruns. Use -getBytes:length: instead.")
  func getBytes(_ buffer: UnsafeMutablePointer<Void>)
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use +dataWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  class func dataWithContentsOfMappedFile(_ path: String) -> AnyObject?
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  init?(base64Encoding base64String: String)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func base64Encoding() -> String
}
class NSMutableData : NSData {
  var mutableBytes: UnsafeMutablePointer<Void> { get }
}
extension NSMutableData {
  func appendBytes(_ bytes: UnsafePointer<Void>, length length: Int)
  func appendData(_ other: NSData)
  func increaseLengthBy(_ extraLength: Int)
  func replaceBytesInRange(_ range: NSRange, withBytes bytes: UnsafePointer<Void>)
  func resetBytesInRange(_ range: NSRange)
  func setData(_ data: NSData)
  func replaceBytesInRange(_ range: NSRange, withBytes replacementBytes: UnsafePointer<Void>, length replacementLength: Int)
}
extension NSMutableData {
  init?(capacity capacity: Int)
  init?(length length: Int)
}
@available(watchOS 2.0, *)
class NSPurgeableData : NSMutableData, NSDiscardableContent {
  @available(watchOS 2.0, *)
  func beginContentAccess() -> Bool
  @available(watchOS 2.0, *)
  func endContentAccess()
  @available(watchOS 2.0, *)
  func discardContentIfPossible()
  @available(watchOS 2.0, *)
  func isContentDiscarded() -> Bool
}

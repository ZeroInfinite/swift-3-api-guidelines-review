
@available(watchOS 2.0, *)
class CNContactProperty : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var contact: CNContact { get }
  var key: String { get }
  var value: AnyObject? { get }
  var identifier: String? { get }
  var label: String? { get }
  @available(watchOS 2.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}


@available(tvOS 8.0, *)
class CKRecordZoneID : NSObject, NSSecureCoding, NSCopying {
  init(zoneName zoneName: String, ownerName ownerName: String)
  var zoneName: String { get }
  var ownerName: String { get }
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}

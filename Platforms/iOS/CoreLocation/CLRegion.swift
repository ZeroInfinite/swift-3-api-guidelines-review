
@available(iOS 7.0, *)
enum CLRegionState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Inside
  case Outside
}
@available(iOS 7.0, *)
enum CLProximity : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Immediate
  case Near
  case Far
}
@available(iOS 4.0, *)
class CLRegion : NSObject, NSCopying, NSSecureCoding {
  @available(iOS 4.0, *)
  var identifier: String { get }
  @available(iOS 7.0, *)
  var notifyOnEntry: Bool
  @available(iOS 7.0, *)
  var notifyOnExit: Bool
  @available(iOS 4.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 4.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 4.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

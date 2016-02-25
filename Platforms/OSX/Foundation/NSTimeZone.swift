
class NSTimeZone : NSObject, NSCopying, NSSecureCoding {
  var name: String { get }
  @NSCopying var data: NSData { get }
  func secondsFromGMTForDate(_ aDate: NSDate) -> Int
  func abbreviationForDate(_ aDate: NSDate) -> String?
  func isDaylightSavingTimeForDate(_ aDate: NSDate) -> Bool
  @available(OSX 10.5, *)
  func daylightSavingTimeOffsetForDate(_ aDate: NSDate) -> NSTimeInterval
  @available(OSX 10.5, *)
  func nextDaylightSavingTimeTransitionAfterDate(_ aDate: NSDate) -> NSDate?
  func copyWithZone(_ zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSTimeZone {
  class func systemTimeZone() -> NSTimeZone
  class func resetSystemTimeZone()
  class func defaultTimeZone() -> NSTimeZone
  class func setDefaultTimeZone(_ aTimeZone: NSTimeZone)
  class func localTimeZone() -> NSTimeZone
  class func knownTimeZoneNames() -> [String]
  class func abbreviationDictionary() -> [String : String]
  @available(OSX 10.6, *)
  class func setAbbreviationDictionary(_ dict: [String : String])
  @available(OSX 10.6, *)
  class func timeZoneDataVersion() -> String
  var secondsFromGMT: Int { get }
  var abbreviation: String? { get }
  var daylightSavingTime: Bool { get }
  @available(OSX 10.5, *)
  var daylightSavingTimeOffset: NSTimeInterval { get }
  @available(OSX 10.5, *)
  @NSCopying var nextDaylightSavingTimeTransition: NSDate? { get }
  func isEqualToTimeZone(_ aTimeZone: NSTimeZone) -> Bool
  @available(OSX 10.5, *)
  func localizedName(_ style: NSTimeZoneNameStyle, locale locale: NSLocale?) -> String?
}
enum NSTimeZoneNameStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Standard
  case ShortStandard
  case DaylightSaving
  case ShortDaylightSaving
  case Generic
  case ShortGeneric
}
extension NSTimeZone {
  init?(name tzName: String)
  init?(name tzName: String, data aData: NSData?)
  convenience init(forSecondsFromGMT seconds: Int)
  convenience init?(abbreviation abbreviation: String)
}
@available(OSX 10.5, *)
let NSSystemTimeZoneDidChangeNotification: String

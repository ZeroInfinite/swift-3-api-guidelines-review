
typealias CFTimeInterval = Double
typealias CFAbsoluteTime = CFTimeInterval
func CFAbsoluteTimeGetCurrent() -> CFAbsoluteTime
let kCFAbsoluteTimeIntervalSince1970: CFTimeInterval
let kCFAbsoluteTimeIntervalSince1904: CFTimeInterval
@available(*, deprecated, renamed="CFDate")
typealias CFDateRef = CFDate
class CFDate {
}
func CFDateGetTypeID() -> CFTypeID
func CFDateCreate(_ allocator: CFAllocator!, _ at: CFAbsoluteTime) -> CFDate!
func CFDateGetAbsoluteTime(_ theDate: CFDate!) -> CFAbsoluteTime
func CFDateGetTimeIntervalSinceDate(_ theDate: CFDate!, _ otherDate: CFDate!) -> CFTimeInterval
func CFDateCompare(_ theDate: CFDate!, _ otherDate: CFDate!, _ context: UnsafeMutablePointer<Void>) -> CFComparisonResult
@available(*, deprecated, renamed="CFTimeZone")
typealias CFTimeZoneRef = CFTimeZone
class CFTimeZone {
}
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFCalendar or NSCalendar API instead")
struct CFGregorianDate {
  var year: Int32
  var month: Int8
  var day: Int8
  var hour: Int8
  var minute: Int8
  var second: Double
  init()
  init(year year: Int32, month month: Int8, day day: Int8, hour hour: Int8, minute minute: Int8, second second: Double)
}
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFCalendar or NSCalendar API instead")
struct CFGregorianUnits {
  var years: Int32
  var months: Int32
  var days: Int32
  var hours: Int32
  var minutes: Int32
  var seconds: Double
  init()
  init(years years: Int32, months months: Int32, days days: Int32, hours hours: Int32, minutes minutes: Int32, seconds seconds: Double)
}
struct CFGregorianUnitFlags : OptionSetType {
  init(rawValue rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFCalendar or NSCalendar API instead")
  static var UnitsYears: CFGregorianUnitFlags { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFCalendar or NSCalendar API instead")
  static var UnitsMonths: CFGregorianUnitFlags { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFCalendar or NSCalendar API instead")
  static var UnitsDays: CFGregorianUnitFlags { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFCalendar or NSCalendar API instead")
  static var UnitsHours: CFGregorianUnitFlags { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFCalendar or NSCalendar API instead")
  static var UnitsMinutes: CFGregorianUnitFlags { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFCalendar or NSCalendar API instead")
  static var UnitsSeconds: CFGregorianUnitFlags { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFCalendar or NSCalendar API instead")
  static var AllUnits: CFGregorianUnitFlags { get }
}
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFCalendar or NSCalendar API instead")
func CFGregorianDateIsValid(_ gdate: CFGregorianDate, _ unitFlags: CFOptionFlags) -> Bool
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFCalendar or NSCalendar API instead")
func CFGregorianDateGetAbsoluteTime(_ gdate: CFGregorianDate, _ tz: CFTimeZone!) -> CFAbsoluteTime
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFCalendar or NSCalendar API instead")
func CFAbsoluteTimeGetGregorianDate(_ at: CFAbsoluteTime, _ tz: CFTimeZone!) -> CFGregorianDate
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFCalendar or NSCalendar API instead")
func CFAbsoluteTimeAddGregorianUnits(_ at: CFAbsoluteTime, _ tz: CFTimeZone!, _ units: CFGregorianUnits) -> CFAbsoluteTime
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFCalendar or NSCalendar API instead")
func CFAbsoluteTimeGetDifferenceAsGregorianUnits(_ at1: CFAbsoluteTime, _ at2: CFAbsoluteTime, _ tz: CFTimeZone!, _ unitFlags: CFOptionFlags) -> CFGregorianUnits
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFCalendar or NSCalendar API instead")
func CFAbsoluteTimeGetDayOfWeek(_ at: CFAbsoluteTime, _ tz: CFTimeZone!) -> Int32
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFCalendar or NSCalendar API instead")
func CFAbsoluteTimeGetDayOfYear(_ at: CFAbsoluteTime, _ tz: CFTimeZone!) -> Int32
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFCalendar or NSCalendar API instead")
func CFAbsoluteTimeGetWeekOfYear(_ at: CFAbsoluteTime, _ tz: CFTimeZone!) -> Int32

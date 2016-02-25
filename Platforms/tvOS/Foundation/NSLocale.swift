
class NSLocale : NSObject, NSCopying, NSSecureCoding {
  func objectForKey(_ key: AnyObject) -> AnyObject?
  func displayNameForKey(_ key: AnyObject, value value: AnyObject) -> String?
  init(localeIdentifier string: String)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
}
extension NSLocale {
  var localeIdentifier: String { get }
}
extension NSLocale {
  @available(tvOS 2.0, *)
  class func autoupdatingCurrentLocale() -> NSLocale
  class func currentLocale() -> NSLocale
  class func systemLocale() -> NSLocale
}
extension NSLocale {
  class func availableLocaleIdentifiers() -> [String]
  class func ISOLanguageCodes() -> [String]
  class func ISOCountryCodes() -> [String]
  class func ISOCurrencyCodes() -> [String]
  @available(tvOS 2.0, *)
  class func commonISOCurrencyCodes() -> [String]
  @available(tvOS 2.0, *)
  class func preferredLanguages() -> [String]
  class func componentsFromLocaleIdentifier(_ string: String) -> [String : String]
  class func localeIdentifierFromComponents(_ dict: [String : String]) -> String
  class func canonicalLocaleIdentifierFromString(_ string: String) -> String
  class func canonicalLanguageIdentifierFromString(_ string: String) -> String
  @available(tvOS 4.0, *)
  class func localeIdentifierFromWindowsLocaleCode(_ lcid: UInt32) -> String?
  @available(tvOS 4.0, *)
  class func windowsLocaleCodeFromLocaleIdentifier(_ localeIdentifier: String) -> UInt32
  @available(tvOS 4.0, *)
  class func characterDirectionForLanguage(_ isoLangCode: String) -> NSLocaleLanguageDirection
  @available(tvOS 4.0, *)
  class func lineDirectionForLanguage(_ isoLangCode: String) -> NSLocaleLanguageDirection
}
enum NSLocaleLanguageDirection : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Unknown
  case LeftToRight
  case RightToLeft
  case TopToBottom
  case BottomToTop
}
@available(tvOS 2.0, *)
let NSCurrentLocaleDidChangeNotification: String
let NSLocaleIdentifier: String
let NSLocaleLanguageCode: String
let NSLocaleCountryCode: String
let NSLocaleScriptCode: String
let NSLocaleVariantCode: String
let NSLocaleExemplarCharacterSet: String
let NSLocaleCalendar: String
let NSLocaleCollationIdentifier: String
let NSLocaleUsesMetricSystem: String
let NSLocaleMeasurementSystem: String
let NSLocaleDecimalSeparator: String
let NSLocaleGroupingSeparator: String
let NSLocaleCurrencySymbol: String
let NSLocaleCurrencyCode: String
@available(tvOS 4.0, *)
let NSLocaleCollatorIdentifier: String
@available(tvOS 4.0, *)
let NSLocaleQuotationBeginDelimiterKey: String
@available(tvOS 4.0, *)
let NSLocaleQuotationEndDelimiterKey: String
@available(tvOS 4.0, *)
let NSLocaleAlternateQuotationBeginDelimiterKey: String
@available(tvOS 4.0, *)
let NSLocaleAlternateQuotationEndDelimiterKey: String
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierGregorian instead")
let NSGregorianCalendar: String
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierBuddhist instead")
let NSBuddhistCalendar: String
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierChinese instead")
let NSChineseCalendar: String
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierHebrew instead")
let NSHebrewCalendar: String
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierIslamic instead")
let NSIslamicCalendar: String
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierIslamicCivil instead")
let NSIslamicCivilCalendar: String
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarIdentifierJapanese instead")
let NSJapaneseCalendar: String
@available(tvOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarIdentifierRepublicOfChina instead")
let NSRepublicOfChinaCalendar: String
@available(tvOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarIdentifierPersian instead")
let NSPersianCalendar: String
@available(tvOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarIdentifierIndian instead")
let NSIndianCalendar: String
@available(tvOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarIdentifierISO8601 instead")
let NSISO8601Calendar: String

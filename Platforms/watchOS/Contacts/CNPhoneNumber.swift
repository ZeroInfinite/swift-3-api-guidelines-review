
@available(watchOS 2.0, *)
class CNPhoneNumber : NSObject, NSCopying, NSSecureCoding {
  init(stringValue string: String)
  var stringValue: String { get }
  @available(watchOS 2.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
let CNLabelPhoneNumberiPhone: String
@available(watchOS 2.0, *)
let CNLabelPhoneNumberMobile: String
@available(watchOS 2.0, *)
let CNLabelPhoneNumberMain: String
@available(watchOS 2.0, *)
let CNLabelPhoneNumberHomeFax: String
@available(watchOS 2.0, *)
let CNLabelPhoneNumberWorkFax: String
@available(watchOS 2.0, *)
let CNLabelPhoneNumberOtherFax: String
@available(watchOS 2.0, *)
let CNLabelPhoneNumberPager: String

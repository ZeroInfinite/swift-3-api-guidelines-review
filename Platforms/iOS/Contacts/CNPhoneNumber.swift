
@available(iOS 9.0, *)
class CNPhoneNumber : NSObject, NSCopying, NSSecureCoding {
  init(stringValue string: String)
  var stringValue: String { get }
  @available(iOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 9.0, *)
let CNLabelPhoneNumberiPhone: String
@available(iOS 9.0, *)
let CNLabelPhoneNumberMobile: String
@available(iOS 9.0, *)
let CNLabelPhoneNumberMain: String
@available(iOS 9.0, *)
let CNLabelPhoneNumberHomeFax: String
@available(iOS 9.0, *)
let CNLabelPhoneNumberWorkFax: String
@available(iOS 9.0, *)
let CNLabelPhoneNumberOtherFax: String
@available(iOS 9.0, *)
let CNLabelPhoneNumberPager: String

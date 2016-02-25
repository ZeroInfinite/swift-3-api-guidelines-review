
@available(iOS 7.0, *)
class SSReadingList : NSObject {
  class func defaultReadingList() -> SSReadingList?
  class func supportsURL(_ URL: NSURL) -> Bool
  @available(iOS 7.0, *)
  func addReadingListItemWithURL(_ URL: NSURL, title title: String?, previewText previewText: String?) throws
}
@available(iOS 7.0, *)
let SSReadingListErrorDomain: String
@available(iOS 7.0, *)
enum SSReadingListErrorCode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case URLSchemeNotAllowed
}

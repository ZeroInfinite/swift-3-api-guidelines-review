
let WebHistoryItemChangedNotification: String
class WebHistoryItem : NSObject, NSCopying {
  init!(URLString URLString: String!, title title: String!, lastVisitedTimeInterval time: NSTimeInterval)
  var originalURLString: String! { get }
  var URLString: String! { get }
  var title: String! { get }
  var lastVisitedTimeInterval: NSTimeInterval { get }
  var alternateTitle: String!
  var icon: NSImage! { get }
  func copyWithZone(_ zone: NSZone) -> AnyObject
}

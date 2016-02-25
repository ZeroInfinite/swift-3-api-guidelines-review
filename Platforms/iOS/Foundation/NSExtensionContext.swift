
@available(iOS 8.0, *)
class NSExtensionContext : NSObject {
  var inputItems: [AnyObject] { get }
  func completeRequestReturningItems(_ items: [AnyObject]?, completionHandler completionHandler: ((Bool) -> Void)?)
  func cancelRequestWithError(_ error: NSError)
  func openURL(_ URL: NSURL, completionHandler completionHandler: ((Bool) -> Void)?)
}
@available(iOS 8.0, *)
let NSExtensionItemsAndErrorsKey: String
@available(iOS 8.2, *)
let NSExtensionHostWillEnterForegroundNotification: String
@available(iOS 8.2, *)
let NSExtensionHostDidEnterBackgroundNotification: String
@available(iOS 8.2, *)
let NSExtensionHostWillResignActiveNotification: String
@available(iOS 8.2, *)
let NSExtensionHostDidBecomeActiveNotification: String

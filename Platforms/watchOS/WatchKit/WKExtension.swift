
@available(watchOS 2.0, *)
class WKExtension : NSObject {
  class func sharedExtension() -> WKExtension
  func openSystemURL(_ url: NSURL)
  weak var delegate: @sil_weak WKExtensionDelegate?
  var rootInterfaceController: WKInterfaceController? { get }
}
@available(watchOS 2.0, *)
protocol WKExtensionDelegate : NSObjectProtocol {
  optional func applicationDidFinishLaunching()
  optional func applicationDidBecomeActive()
  optional func applicationWillResignActive()
  optional func handleActionWithIdentifier(_ identifier: String?, forRemoteNotification remoteNotification: [NSObject : AnyObject])
  optional func handleActionWithIdentifier(_ identifier: String?, forLocalNotification localNotification: UILocalNotification)
  optional func handleActionWithIdentifier(_ identifier: String?, forRemoteNotification remoteNotification: [NSObject : AnyObject], withResponseInfo responseInfo: [NSObject : AnyObject])
  optional func handleActionWithIdentifier(_ identifier: String?, forLocalNotification localNotification: UILocalNotification, withResponseInfo responseInfo: [NSObject : AnyObject])
  optional func handleUserActivity(_ userInfo: [NSObject : AnyObject]?)
  optional func didReceiveRemoteNotification(_ userInfo: [NSObject : AnyObject])
  optional func didReceiveLocalNotification(_ notification: UILocalNotification)
}

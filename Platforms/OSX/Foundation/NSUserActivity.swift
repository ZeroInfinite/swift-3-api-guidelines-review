
@available(OSX 10.10, *)
class NSUserActivity : NSObject {
  init(activityType: String)
  init()
  var activityType: String { get }
  var title: String?
  var userInfo: [NSObject : AnyObject]?
  func addUserInfoEntriesFromDictionary(otherDictionary: [NSObject : AnyObject])
  @available(OSX 10.11, *)
  var requiredUserInfoKeys: Set<String>
  var needsSave: Bool
  @NSCopying var webpageURL: NSURL?
  @available(OSX 10.11, *)
  @NSCopying var expirationDate: NSDate
  @available(OSX 10.11, *)
  var keywords: Set<String>
  var supportsContinuationStreams: Bool
  weak var delegate: @sil_weak NSUserActivityDelegate?
  func becomeCurrent()
  @available(OSX 10.11, *)
  func resignCurrent()
  func invalidate()
  func getContinuationStreamsWithCompletionHandler(completionHandler: (NSInputStream?, NSOutputStream?, NSError?) -> Void)
  @available(OSX 10.11, *)
  var eligibleForHandoff: Bool
  @available(OSX 10.11, *)
  var eligibleForSearch: Bool
  @available(OSX 10.11, *)
  var eligibleForPublicIndexing: Bool
}
@available(OSX 10.10, *)
let NSUserActivityTypeBrowsingWeb: String
@available(OSX 10.10, *)
protocol NSUserActivityDelegate : NSObjectProtocol {
  optional func userActivityWillSave(userActivity: NSUserActivity)
  optional func userActivityWasContinued(userActivity: NSUserActivity)
  optional func userActivity(userActivity: NSUserActivity?, didReceiveInputStream inputStream: NSInputStream, outputStream: NSOutputStream)
}
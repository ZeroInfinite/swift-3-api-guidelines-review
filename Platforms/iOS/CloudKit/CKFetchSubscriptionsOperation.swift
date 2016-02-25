
@available(iOS 8.0, *)
class CKFetchSubscriptionsOperation : CKDatabaseOperation {
  class func fetchAllSubscriptionsOperation() -> Self
  convenience init(subscriptionIDs subscriptionIDs: [String])
  var subscriptionIDs: [String]?
  var fetchSubscriptionCompletionBlock: (([String : CKSubscription]?, NSError?) -> Void)?
}


@available(iOS 8.0, *)
let PKPushTypeVoIP: String
@available(iOS 9.0, *)
let PKPushTypeComplication: String
@available(iOS 8.0, *)
class PKPushRegistry : NSObject {
  weak var delegate: @sil_weak PKPushRegistryDelegate!
  var desiredPushTypes: Set<NSObject>!
  func pushTokenForType(_ type: String!) -> NSData!
  init!(queue queue: dispatch_queue_t!)
}
protocol PKPushRegistryDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  func pushRegistry(_ registry: PKPushRegistry!, didUpdatePushCredentials credentials: PKPushCredentials!, forType type: String!)
  @available(iOS 8.0, *)
  func pushRegistry(_ registry: PKPushRegistry!, didReceiveIncomingPushWithPayload payload: PKPushPayload!, forType type: String!)
  @available(iOS 8.0, *)
  optional func pushRegistry(_ registry: PKPushRegistry!, didInvalidatePushTokenForType type: String!)
}

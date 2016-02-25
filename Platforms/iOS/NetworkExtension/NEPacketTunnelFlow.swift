
@available(iOS 9.0, *)
class NEPacketTunnelFlow : NSObject {
  @available(iOS 9.0, *)
  func readPacketsWithCompletionHandler(_ completionHandler: ([NSData], [NSNumber]) -> Void)
  @available(iOS 9.0, *)
  func writePackets(_ packets: [NSData], withProtocols protocols: [NSNumber]) -> Bool
}

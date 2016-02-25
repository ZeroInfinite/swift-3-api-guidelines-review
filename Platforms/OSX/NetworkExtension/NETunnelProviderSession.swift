
@available(OSX 10.11, *)
class NETunnelProviderSession : NEVPNConnection {
  @available(OSX 10.11, *)
  func startTunnelWithOptions(_ options: [String : AnyObject]?) throws
  @available(OSX 10.11, *)
  func stopTunnel()
  @available(OSX 10.11, *)
  func sendProviderMessage(_ messageData: NSData, responseHandler responseHandler: ((NSData?) -> Void)?) throws
}

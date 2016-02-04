
@available(OSX 10.11, *)
class NEAppProxyProvider : NETunnelProvider {
  @available(OSX 10.11, *)
  func startProxyWithOptions(options: [String : AnyObject]?, completionHandler: (NSError?) -> Void)
  @available(OSX 10.11, *)
  func stopProxyWithReason(reason: NEProviderStopReason, completionHandler: () -> Void)
  @available(OSX 10.11, *)
  func cancelProxyWithError(error: NSError?)
  @available(OSX 10.11, *)
  func handleNewFlow(flow: NEAppProxyFlow) -> Bool
  init()
}
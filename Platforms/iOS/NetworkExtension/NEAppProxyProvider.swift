
@available(iOS 9.0, *)
class NEAppProxyProvider : NETunnelProvider {
  @available(iOS 9.0, *)
  func startProxyWithOptions(_ options: [String : AnyObject]?, completionHandler completionHandler: (NSError?) -> Void)
  @available(iOS 9.0, *)
  func stopProxyWithReason(_ reason: NEProviderStopReason, completionHandler completionHandler: () -> Void)
  @available(iOS 9.0, *)
  func cancelProxyWithError(_ error: NSError?)
  @available(iOS 9.0, *)
  func handleNewFlow(_ flow: NEAppProxyFlow) -> Bool
}


@available(OSX 10.11, *)
class NEProxyServer : NSObject, NSSecureCoding, NSCopying {
  @available(OSX 10.11, *)
  init(address: String, port: Int)
  @available(OSX 10.11, *)
  var address: String { get }
  @available(OSX 10.11, *)
  var port: Int { get }
  @available(OSX 10.11, *)
  var authenticationRequired: Bool
  @available(OSX 10.11, *)
  var username: String?
  @available(OSX 10.11, *)
  var password: String?
  init()
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.11, *)
class NEProxySettings : NSObject, NSSecureCoding, NSCopying {
  @available(OSX 10.11, *)
  var autoProxyConfigurationEnabled: Bool
  @available(OSX 10.11, *)
  @NSCopying var proxyAutoConfigurationURL: NSURL?
  @available(OSX 10.11, *)
  var proxyAutoConfigurationJavaScript: String?
  @available(OSX 10.11, *)
  var HTTPEnabled: Bool
  @available(OSX 10.11, *)
  @NSCopying var HTTPServer: NEProxyServer?
  @available(OSX 10.11, *)
  var HTTPSEnabled: Bool
  @available(OSX 10.11, *)
  @NSCopying var HTTPSServer: NEProxyServer?
  @available(OSX 10.11, *)
  var excludeSimpleHostnames: Bool
  @available(OSX 10.11, *)
  var exceptionList: [String]?
  @available(OSX 10.11, *)
  var matchDomains: [String]?
  init()
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
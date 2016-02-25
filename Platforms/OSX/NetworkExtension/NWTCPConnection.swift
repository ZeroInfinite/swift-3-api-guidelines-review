
@available(OSX 10.11, *)
enum NWTCPConnectionState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Invalid
  case Connecting
  case Waiting
  case Connected
  case Disconnected
  case Cancelled
}
@available(OSX 10.11, *)
class NWTCPConnection : NSObject {
  @available(OSX 10.11, *)
  init(upgradeForConnection connection: NWTCPConnection)
  @available(OSX 10.11, *)
  var state: NWTCPConnectionState { get }
  @available(OSX 10.11, *)
  var viable: Bool { get }
  @available(OSX 10.11, *)
  var hasBetterPath: Bool { get }
  @available(OSX 10.11, *)
  var endpoint: NWEndpoint { get }
  @available(OSX 10.11, *)
  var connectedPath: NWPath? { get }
  @available(OSX 10.11, *)
  var localAddress: NWEndpoint? { get }
  @available(OSX 10.11, *)
  var remoteAddress: NWEndpoint? { get }
  @available(OSX 10.11, *)
  var txtRecord: NSData? { get }
  @available(OSX 10.11, *)
  var error: NSError? { get }
  @available(OSX 10.11, *)
  func cancel()
  @available(OSX 10.11, *)
  func readLength(_ length: Int, completionHandler completion: (NSData?, NSError?) -> Void)
  @available(OSX 10.11, *)
  func readMinimumLength(_ minimum: Int, maximumLength maximum: Int, completionHandler completion: (NSData?, NSError?) -> Void)
  @available(OSX 10.11, *)
  func write(_ data: NSData, completionHandler completion: (NSError?) -> Void)
  @available(OSX 10.11, *)
  func writeClose()
}
protocol NWTCPConnectionAuthenticationDelegate : NSObjectProtocol {
  @available(OSX 10.11, *)
  optional func shouldProvideIdentityForConnection(_ connection: NWTCPConnection) -> Bool
  @available(OSX 10.11, *)
  optional func provideIdentityForConnection(_ connection: NWTCPConnection, completionHandler completion: (SecIdentity, [AnyObject]) -> Void)
  @available(OSX 10.11, *)
  optional func shouldEvaluateTrustForConnection(_ connection: NWTCPConnection) -> Bool
  @available(OSX 10.11, *)
  optional func evaluateTrustForConnection(_ connection: NWTCPConnection, peerCertificateChain peerCertificateChain: [AnyObject], completionHandler completion: (SecTrust) -> Void)
}

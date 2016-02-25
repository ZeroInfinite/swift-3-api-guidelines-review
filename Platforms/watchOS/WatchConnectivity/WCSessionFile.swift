
@available(watchOS 2.0, *)
class WCSessionFile : NSObject {
  var fileURL: NSURL { get }
  var metadata: [String : AnyObject]? { get }
}
@available(watchOS 2.0, *)
class WCSessionFileTransfer : NSObject {
  var file: WCSessionFile { get }
  var transferring: Bool { get }
  func cancel()
}

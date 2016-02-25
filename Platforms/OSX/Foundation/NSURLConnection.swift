
class NSURLConnection : NSObject {
  @available(OSX, introduced=10.5, deprecated=10.11, message="Use NSURLSession (see NSURLSession.h)")
  init?(request request: NSURLRequest, delegate delegate: AnyObject?, startImmediately startImmediately: Bool)
  @available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSession (see NSURLSession.h)")
  init?(request request: NSURLRequest, delegate delegate: AnyObject?)
  @available(OSX 10.8, *)
  @NSCopying var originalRequest: NSURLRequest { get }
  @available(OSX 10.8, *)
  @NSCopying var currentRequest: NSURLRequest { get }
  @available(OSX 10.5, *)
  func start()
  func cancel()
  @available(OSX 10.5, *)
  func scheduleInRunLoop(_ aRunLoop: NSRunLoop, forMode mode: String)
  @available(OSX 10.5, *)
  func unscheduleFromRunLoop(_ aRunLoop: NSRunLoop, forMode mode: String)
  @available(OSX 10.7, *)
  func setDelegateQueue(_ queue: NSOperationQueue?)
  class func canHandleRequest(_ request: NSURLRequest) -> Bool
}
protocol NSURLConnectionDelegate : NSObjectProtocol {
  optional func connection(_ connection: NSURLConnection, didFailWithError error: NSError)
  optional func connectionShouldUseCredentialStorage(_ connection: NSURLConnection) -> Bool
  optional func connection(_ connection: NSURLConnection, willSendRequestForAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(_ connection: NSURLConnection, canAuthenticateAgainstProtectionSpace protectionSpace: NSURLProtectionSpace) -> Bool
  @available(OSX, introduced=10.2, deprecated=10.10, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(_ connection: NSURLConnection, didReceiveAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
  @available(OSX, introduced=10.2, deprecated=10.10, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(_ connection: NSURLConnection, didCancelAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
}
protocol NSURLConnectionDataDelegate : NSURLConnectionDelegate {
  optional func connection(_ connection: NSURLConnection, willSendRequest request: NSURLRequest, redirectResponse response: NSURLResponse?) -> NSURLRequest?
  optional func connection(_ connection: NSURLConnection, didReceiveResponse response: NSURLResponse)
  optional func connection(_ connection: NSURLConnection, didReceiveData data: NSData)
  optional func connection(_ connection: NSURLConnection, needNewBodyStream request: NSURLRequest) -> NSInputStream?
  optional func connection(_ connection: NSURLConnection, didSendBodyData bytesWritten: Int, totalBytesWritten totalBytesWritten: Int, totalBytesExpectedToWrite totalBytesExpectedToWrite: Int)
  optional func connection(_ connection: NSURLConnection, willCacheResponse cachedResponse: NSCachedURLResponse) -> NSCachedURLResponse?
  optional func connectionDidFinishLoading(_ connection: NSURLConnection)
}
protocol NSURLConnectionDownloadDelegate : NSURLConnectionDelegate {
  optional func connection(_ connection: NSURLConnection, didWriteData bytesWritten: Int64, totalBytesWritten totalBytesWritten: Int64, expectedTotalBytes expectedTotalBytes: Int64)
  optional func connectionDidResumeDownloading(_ connection: NSURLConnection, totalBytesWritten totalBytesWritten: Int64, expectedTotalBytes expectedTotalBytes: Int64)
  func connectionDidFinishDownloading(_ connection: NSURLConnection, destinationURL destinationURL: NSURL)
}
extension NSURLConnection {
  @available(OSX, introduced=10.3, deprecated=10.11, message="Use [NSURLSession dataTaskWithRequest:completionHandler:] (see NSURLSession.h")
  class func sendSynchronousRequest(_ request: NSURLRequest, returningResponse response: AutoreleasingUnsafeMutablePointer<NSURLResponse?>) throws -> NSData
}
extension NSURLConnection {
  @available(OSX, introduced=10.7, deprecated=10.11, message="Use [NSURLSession dataTaskWithRequest:completionHandler:] (see NSURLSession.h")
  class func sendAsynchronousRequest(_ request: NSURLRequest, queue queue: NSOperationQueue, completionHandler handler: (NSURLResponse?, NSData?, NSError?) -> Void)
}


@available(iOS 2.0, *)
class NSOperation : NSObject {
  func start()
  func main()
  var cancelled: Bool { get }
  func cancel()
  var executing: Bool { get }
  var finished: Bool { get }
  var concurrent: Bool { get }
  @available(iOS 7.0, *)
  var asynchronous: Bool { get }
  var ready: Bool { get }
  func addDependency(_ op: NSOperation)
  func removeDependency(_ op: NSOperation)
  var dependencies: [NSOperation] { get }
  var queuePriority: NSOperationQueuePriority
  @available(iOS 4.0, *)
  var completionBlock: (() -> Void)?
  @available(iOS 4.0, *)
  func waitUntilFinished()
  @available(iOS, introduced=4.0, deprecated=8.0)
  var threadPriority: Double
  @available(iOS 8.0, *)
  var qualityOfService: NSQualityOfService
  @available(iOS 8.0, *)
  var name: String?
}
enum NSOperationQueuePriority : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case VeryLow
  case Low
  case Normal
  case High
  case VeryHigh
}
@available(iOS 4.0, *)
class NSBlockOperation : NSOperation {
  convenience init(block block: () -> Void)
  func addExecutionBlock(_ block: () -> Void)
  var executionBlocks: [() -> Void] { get }
}
@available(iOS 2.0, *)
let NSInvocationOperationVoidResultException: String
@available(iOS 2.0, *)
let NSInvocationOperationCancelledException: String
let NSOperationQueueDefaultMaxConcurrentOperationCount: Int
@available(iOS 2.0, *)
class NSOperationQueue : NSObject {
  func addOperation(_ op: NSOperation)
  @available(iOS 4.0, *)
  func addOperations(_ ops: [NSOperation], waitUntilFinished wait: Bool)
  @available(iOS 4.0, *)
  func addOperationWithBlock(_ block: () -> Void)
  var operations: [NSOperation] { get }
  @available(iOS 4.0, *)
  var operationCount: Int { get }
  var maxConcurrentOperationCount: Int
  var suspended: Bool
  @available(iOS 4.0, *)
  var name: String?
  @available(iOS 8.0, *)
  var qualityOfService: NSQualityOfService
  @available(iOS 8.0, *)
  unowned(unsafe) var underlyingQueue: @sil_unmanaged dispatch_queue_t?
  func cancelAllOperations()
  func waitUntilAllOperationsAreFinished()
  @available(iOS 4.0, *)
  class func currentQueue() -> NSOperationQueue?
  @available(iOS 4.0, *)
  class func mainQueue() -> NSOperationQueue
}

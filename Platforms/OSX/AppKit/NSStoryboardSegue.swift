
@available(OSX 10.10, *)
class NSStoryboardSegue : NSObject {
  convenience init(identifier identifier: String, source sourceController: AnyObject, destination destinationController: AnyObject, performHandler performHandler: () -> Void)
  init(identifier identifier: String, source sourceController: AnyObject, destination destinationController: AnyObject)
  var identifier: String? { get }
  var sourceController: AnyObject { get }
  var destinationController: AnyObject { get }
  func perform()
}
protocol NSSeguePerforming : NSObjectProtocol {
  @available(OSX 10.10, *)
  optional func prepareForSegue(_ segue: NSStoryboardSegue, sender sender: AnyObject?)
  @available(OSX 10.10, *)
  optional func performSegueWithIdentifier(_ identifier: String, sender sender: AnyObject?)
  @available(OSX 10.10, *)
  optional func shouldPerformSegueWithIdentifier(_ identifier: String, sender sender: AnyObject?) -> Bool
}

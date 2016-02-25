
extension NSObject {
  class func webPlugInInitialize()
  func webPlugInInitialize()
  class func webPlugInStart()
  func webPlugInStart()
  class func webPlugInStop()
  func webPlugInStop()
  class func webPlugInDestroy()
  func webPlugInDestroy()
  class func webPlugInSetIsSelected(_ isSelected: Bool)
  func webPlugInSetIsSelected(_ isSelected: Bool)
  var objectForWebScript: AnyObject! { get }
  @available(OSX 10.6, *)
  class func webPlugInMainResourceDidReceiveResponse(_ response: NSURLResponse!)
  @available(OSX 10.6, *)
  func webPlugInMainResourceDidReceiveResponse(_ response: NSURLResponse!)
  @available(OSX 10.6, *)
  class func webPlugInMainResourceDidReceiveData(_ data: NSData!)
  @available(OSX 10.6, *)
  func webPlugInMainResourceDidReceiveData(_ data: NSData!)
  @available(OSX 10.6, *)
  class func webPlugInMainResourceDidFailWithError(_ error: NSError!)
  @available(OSX 10.6, *)
  func webPlugInMainResourceDidFailWithError(_ error: NSError!)
  @available(OSX 10.6, *)
  class func webPlugInMainResourceDidFinishLoading()
  @available(OSX 10.6, *)
  func webPlugInMainResourceDidFinishLoading()
  class func objectForWebScript() -> AnyObject!
}

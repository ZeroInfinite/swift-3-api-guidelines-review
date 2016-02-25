
typealias MPMediaEntityPersistentID = UInt64
@available(iOS 4.2, *)
class MPMediaEntity : NSObject, NSSecureCoding {
  class func canFilterByProperty(_ property: String) -> Bool
  @available(iOS 4.0, *)
  func enumerateValuesForProperties(_ properties: Set<String>, usingBlock block: (String, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 8.0, *)
  subscript(_ key: AnyObject) -> AnyObject? { get }
  func valueForProperty(_ property: String) -> AnyObject?
  @available(iOS 7.0, *)
  var persistentID: MPMediaEntityPersistentID { get }
  @available(iOS 4.2, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 4.2, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 4.2, *)
let MPMediaEntityPropertyPersistentID: String


let NSFetchRequestExpressionType: NSExpressionType
@available(iOS 3.0, *)
class NSFetchRequestExpression : NSExpression {
  class func expressionForFetch(_ fetch: NSExpression, context context: NSExpression, countOnly countFlag: Bool) -> NSExpression
  var requestExpression: NSExpression { get }
  var contextExpression: NSExpression { get }
  var countOnlyRequest: Bool { get }
}
struct _fetchExpressionFlags {
  var isCountOnly: UInt32
  var _RESERVED: UInt32
  init()
  init(isCountOnly isCountOnly: UInt32, _RESERVED _RESERVED: UInt32)
}

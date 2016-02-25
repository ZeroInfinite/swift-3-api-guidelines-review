
@available(iOS 3.0, *)
class NSMappingModel : NSObject {
  /*not inherited*/ init?(fromBundles bundles: [NSBundle]?, forSourceModel sourceModel: NSManagedObjectModel?, destinationModel destinationModel: NSManagedObjectModel?)
  @available(iOS 3.0, *)
  class func inferredMappingModelForSourceModel(_ sourceModel: NSManagedObjectModel, destinationModel destinationModel: NSManagedObjectModel) throws -> NSMappingModel
  init?(contentsOfURL url: NSURL?)
  var entityMappings: [NSEntityMapping]!
  var entityMappingsByName: [String : NSEntityMapping] { get }
}
struct __modelMappingFlags {
  var _isInUse: UInt32
  var _reservedModelMapping: UInt32
  init()
  init(_isInUse _isInUse: UInt32, _reservedModelMapping _reservedModelMapping: UInt32)
}

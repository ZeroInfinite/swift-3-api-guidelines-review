
@available(tvOS 3.0, *)
let NSSQLiteStoreType: String
@available(tvOS 3.0, *)
let NSBinaryStoreType: String
@available(tvOS 3.0, *)
let NSInMemoryStoreType: String
@available(tvOS 3.0, *)
let NSStoreTypeKey: String
@available(tvOS 3.0, *)
let NSStoreUUIDKey: String
@available(tvOS 7.0, *)
let NSPersistentStoreCoordinatorStoresWillChangeNotification: String
@available(tvOS 3.0, *)
let NSPersistentStoreCoordinatorStoresDidChangeNotification: String
@available(tvOS 3.0, *)
let NSPersistentStoreCoordinatorWillRemoveStoreNotification: String
@available(tvOS 3.0, *)
let NSAddedPersistentStoresKey: String
@available(tvOS 3.0, *)
let NSRemovedPersistentStoresKey: String
@available(tvOS 3.0, *)
let NSUUIDChangedPersistentStoresKey: String
@available(tvOS 3.0, *)
let NSReadOnlyPersistentStoreOption: String
@available(tvOS 3.0, *)
let NSPersistentStoreTimeoutOption: String
@available(tvOS 3.0, *)
let NSSQLitePragmasOption: String
@available(tvOS 3.0, *)
let NSSQLiteAnalyzeOption: String
@available(tvOS 3.0, *)
let NSSQLiteManualVacuumOption: String
@available(tvOS 3.0, *)
let NSIgnorePersistentStoreVersioningOption: String
@available(tvOS 3.0, *)
let NSMigratePersistentStoresAutomaticallyOption: String
@available(tvOS 3.0, *)
let NSInferMappingModelAutomaticallyOption: String
@available(tvOS 3.0, *)
let NSStoreModelVersionHashesKey: String
@available(tvOS 3.0, *)
let NSStoreModelVersionIdentifiersKey: String
@available(tvOS 3.0, *)
let NSPersistentStoreOSCompatibility: String
@available(tvOS 6.0, *)
let NSPersistentStoreForceDestroyOption: String
@available(tvOS 5.0, *)
let NSPersistentStoreFileProtectionKey: String
@available(tvOS 3.0, *)
class NSPersistentStoreCoordinator : NSObject {
  init(managedObjectModel model: NSManagedObjectModel)
  var managedObjectModel: NSManagedObjectModel { get }
  var persistentStores: [NSPersistentStore] { get }
  @available(tvOS 8.0, *)
  var name: String?
  func persistentStoreForURL(_ URL: NSURL) -> NSPersistentStore?
  func URLForPersistentStore(_ store: NSPersistentStore) -> NSURL
  @available(tvOS 3.0, *)
  func setURL(_ url: NSURL, forPersistentStore store: NSPersistentStore) -> Bool
  func addPersistentStoreWithType(_ storeType: String, configuration configuration: String?, URL storeURL: NSURL?, options options: [NSObject : AnyObject]?) throws -> NSPersistentStore
  func removePersistentStore(_ store: NSPersistentStore) throws
  func setMetadata(_ metadata: [String : AnyObject]?, forPersistentStore store: NSPersistentStore)
  func metadataForPersistentStore(_ store: NSPersistentStore) -> [String : AnyObject]
  func managedObjectIDForURIRepresentation(_ url: NSURL) -> NSManagedObjectID?
  @available(tvOS 5.0, *)
  func executeRequest(_ request: NSPersistentStoreRequest, withContext context: NSManagedObjectContext) throws -> AnyObject
  @available(tvOS 3.0, *)
  class func registeredStoreTypes() -> [String : NSValue]
  @available(tvOS 3.0, *)
  class func registerStoreClass(_ storeClass: AnyClass, forStoreType storeType: String)
  @available(tvOS 7.0, *)
  class func metadataForPersistentStoreOfType(_ storeType: String, URL url: NSURL, options options: [NSObject : AnyObject]?) throws -> [String : AnyObject]
  @available(tvOS 7.0, *)
  class func setMetadata(_ metadata: [String : AnyObject]?, forPersistentStoreOfType storeType: String, URL url: NSURL, options options: [NSObject : AnyObject]?) throws
  @available(tvOS, introduced=3.0, deprecated=9.0, message="Use a -metadataForPersistentStoreOfType:URL:options:error: and pass in an options dictionary matching addPersistentStoreWithType")
  class func metadataForPersistentStoreOfType(_ storeType: String?, URL url: NSURL) throws -> [String : AnyObject]
  @available(tvOS, introduced=3.0, deprecated=9.0, message="Use a -setMetadata:forPersistentStoreOfType:URL:options:error: and pass in an options dictionary matching addPersistentStoreWithType")
  class func setMetadata(_ metadata: [String : AnyObject]?, forPersistentStoreOfType storeType: String?, URL url: NSURL) throws
  func migratePersistentStore(_ store: NSPersistentStore, toURL URL: NSURL, options options: [NSObject : AnyObject]?, withType storeType: String) throws -> NSPersistentStore
  @available(tvOS 9.0, *)
  func destroyPersistentStoreAtURL(_ url: NSURL, withType storeType: String, options options: [NSObject : AnyObject]?) throws
  @available(tvOS 9.0, *)
  func replacePersistentStoreAtURL(_ destinationURL: NSURL, destinationOptions destinationOptions: [NSObject : AnyObject]?, withPersistentStoreFromURL sourceURL: NSURL, sourceOptions sourceOptions: [NSObject : AnyObject]?, storeType storeType: String) throws
  @available(tvOS 8.0, *)
  func performBlock(_ block: () -> Void)
  @available(tvOS 8.0, *)
  func performBlockAndWait(_ block: () -> Void)
}
struct _persistentStoreCoordinatorFlags {
  var _isRegistered: UInt32
  var _reservedFlags: UInt32
  init()
  init(_isRegistered _isRegistered: UInt32, _reservedFlags _reservedFlags: UInt32)
}

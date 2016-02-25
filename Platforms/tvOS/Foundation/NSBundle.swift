
class NSBundle : NSObject {
  class func mainBundle() -> NSBundle
  init?(path path: String)
  @available(tvOS 4.0, *)
  convenience init?(URL url: NSURL)
  /*not inherited*/ init(forClass aClass: AnyClass)
  /*not inherited*/ init?(identifier identifier: String)
  class func allBundles() -> [NSBundle]
  class func allFrameworks() -> [NSBundle]
  func load() -> Bool
  var loaded: Bool { get }
  func unload() -> Bool
  @available(tvOS 2.0, *)
  func preflight() throws
  @available(tvOS 2.0, *)
  func loadAndReturnError() throws
  @available(tvOS 4.0, *)
  @NSCopying var bundleURL: NSURL { get }
  @available(tvOS 4.0, *)
  @NSCopying var resourceURL: NSURL? { get }
  @available(tvOS 4.0, *)
  @NSCopying var executableURL: NSURL? { get }
  @available(tvOS 4.0, *)
  func URLForAuxiliaryExecutable(_ executableName: String) -> NSURL?
  @available(tvOS 4.0, *)
  @NSCopying var privateFrameworksURL: NSURL? { get }
  @available(tvOS 4.0, *)
  @NSCopying var sharedFrameworksURL: NSURL? { get }
  @available(tvOS 4.0, *)
  @NSCopying var sharedSupportURL: NSURL? { get }
  @available(tvOS 4.0, *)
  @NSCopying var builtInPlugInsURL: NSURL? { get }
  @available(tvOS 7.0, *)
  @NSCopying var appStoreReceiptURL: NSURL? { get }
  var bundlePath: String { get }
  var resourcePath: String? { get }
  var executablePath: String? { get }
  func pathForAuxiliaryExecutable(_ executableName: String) -> String?
  var privateFrameworksPath: String? { get }
  var sharedFrameworksPath: String? { get }
  var sharedSupportPath: String? { get }
  var builtInPlugInsPath: String? { get }
  @available(tvOS 4.0, *)
  class func URLForResource(_ name: String?, withExtension ext: String?, subdirectory subpath: String?, inBundleWithURL bundleURL: NSURL) -> NSURL?
  @available(tvOS 4.0, *)
  class func URLsForResourcesWithExtension(_ ext: String?, subdirectory subpath: String?, inBundleWithURL bundleURL: NSURL) -> [NSURL]?
  @available(tvOS 4.0, *)
  func URLForResource(_ name: String?, withExtension ext: String?) -> NSURL?
  @available(tvOS 4.0, *)
  func URLForResource(_ name: String?, withExtension ext: String?, subdirectory subpath: String?) -> NSURL?
  @available(tvOS 4.0, *)
  func URLForResource(_ name: String?, withExtension ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> NSURL?
  @available(tvOS 4.0, *)
  func URLsForResourcesWithExtension(_ ext: String?, subdirectory subpath: String?) -> [NSURL]?
  @available(tvOS 4.0, *)
  func URLsForResourcesWithExtension(_ ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> [NSURL]?
  class func pathForResource(_ name: String?, ofType ext: String?, inDirectory bundlePath: String) -> String?
  class func pathsForResourcesOfType(_ ext: String?, inDirectory bundlePath: String) -> [String]
  func pathForResource(_ name: String?, ofType ext: String?) -> String?
  func pathForResource(_ name: String?, ofType ext: String?, inDirectory subpath: String?) -> String?
  func pathForResource(_ name: String?, ofType ext: String?, inDirectory subpath: String?, forLocalization localizationName: String?) -> String?
  func pathsForResourcesOfType(_ ext: String?, inDirectory subpath: String?) -> [String]
  func pathsForResourcesOfType(_ ext: String?, inDirectory subpath: String?, forLocalization localizationName: String?) -> [String]
  func localizedStringForKey(_ key: String, value value: String?, table tableName: String?) -> String
  var bundleIdentifier: String? { get }
  var infoDictionary: [String : AnyObject]? { get }
  var localizedInfoDictionary: [String : AnyObject]? { get }
  func objectForInfoDictionaryKey(_ key: String) -> AnyObject?
  func classNamed(_ className: String) -> AnyClass?
  var principalClass: AnyClass? { get }
  var preferredLocalizations: [String] { get }
  var localizations: [String] { get }
  var developmentLocalization: String? { get }
  class func preferredLocalizationsFromArray(_ localizationsArray: [String]) -> [String]
  class func preferredLocalizationsFromArray(_ localizationsArray: [String], forPreferences preferencesArray: [String]?) -> [String]
  @available(tvOS 2.0, *)
  var executableArchitectures: [NSNumber]? { get }
}
var NSBundleExecutableArchitectureI386: Int { get }
var NSBundleExecutableArchitecturePPC: Int { get }
var NSBundleExecutableArchitectureX86_64: Int { get }
var NSBundleExecutableArchitecturePPC64: Int { get }
extension NSString {
  @available(tvOS 9.0, *)
  func variantFittingPresentationWidth(_ width: Int) -> String
}
let NSBundleDidLoadNotification: String
let NSLoadedClasses: String
@available(tvOS 9.0, *)
class NSBundleResourceRequest : NSObject, NSProgressReporting {
  convenience init(tags tags: Set<String>)
  init(tags tags: Set<String>, bundle bundle: NSBundle)
  var loadingPriority: Double
  var tags: Set<String> { get }
  var bundle: NSBundle { get }
  func beginAccessingResourcesWithCompletionHandler(_ completionHandler: (NSError?) -> Void)
  func conditionallyBeginAccessingResourcesWithCompletionHandler(_ completionHandler: (Bool) -> Void)
  func endAccessingResources()
  var progress: NSProgress { get }
}
extension NSBundle {
  @available(tvOS 9.0, *)
  func setPreservationPriority(_ priority: Double, forTags tags: Set<String>)
  @available(tvOS 9.0, *)
  func preservationPriorityForTag(_ tag: String) -> Double
}
@available(tvOS 9.0, *)
let NSBundleResourceRequestLowDiskSpaceNotification: String
@available(tvOS 9.0, *)
let NSBundleResourceRequestLoadingPriorityUrgent: Double

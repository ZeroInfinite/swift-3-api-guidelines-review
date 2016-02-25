
@available(iOS 9.0, *)
class GKComponent : NSObject, NSCopying {
  weak var entity: @sil_weak GKEntity? { get }
  func updateWithDeltaTime(_ seconds: NSTimeInterval)
  @available(iOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(iOS 9.0, *)
class GKComponentSystem : NSObject, NSFastEnumeration {
  var componentClass: AnyClass { get }
  var components: [GKComponent] { get }
  subscript(_ idx: Int) -> GKComponent { get }
  init(componentClass cls: AnyClass)
  func addComponent(_ component: GKComponent)
  func addComponentWithEntity(_ entity: GKEntity)
  func removeComponentWithEntity(_ entity: GKEntity)
  func removeComponent(_ component: GKComponent)
  func updateWithDeltaTime(_ seconds: NSTimeInterval)
  @available(iOS 9.0, *)
  func countByEnumeratingWithState(_ state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}


protocol UIDynamicAnimatorDelegate : NSObjectProtocol {
  @available(tvOS 7.0, *)
  optional func dynamicAnimatorWillResume(_ animator: UIDynamicAnimator)
  @available(tvOS 7.0, *)
  optional func dynamicAnimatorDidPause(_ animator: UIDynamicAnimator)
}
@available(tvOS 7.0, *)
class UIDynamicAnimator : NSObject {
  init(referenceView view: UIView)
  func addBehavior(_ behavior: UIDynamicBehavior)
  func removeBehavior(_ behavior: UIDynamicBehavior)
  func removeAllBehaviors()
  var referenceView: UIView? { get }
  var behaviors: [UIDynamicBehavior] { get }
  func itemsInRect(_ rect: CGRect) -> [UIDynamicItem]
  func updateItemUsingCurrentState(_ item: UIDynamicItem)
  var running: Bool { get }
  func elapsedTime() -> NSTimeInterval
  weak var delegate: @sil_weak UIDynamicAnimatorDelegate?
}
extension UIDynamicAnimator {
  convenience init(collectionViewLayout layout: UICollectionViewLayout)
  func layoutAttributesForCellAtIndexPath(_ indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryViewOfKind(_ kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForDecorationViewOfKind(_ decorationViewKind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
}

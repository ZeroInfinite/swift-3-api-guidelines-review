
@available(tvOS, introduced=3.2, deprecated=9.0, message="UIPopoverController is deprecated. Popovers are now implemented as UIViewController presentations. Use a modal presentation style of UIModalPresentationPopover and UIPopoverPresentationController.")
class UIPopoverController : NSObject, UIAppearanceContainer {
  init(contentViewController viewController: UIViewController)
  weak var delegate: @sil_weak UIPopoverControllerDelegate?
  var contentViewController: UIViewController
  func setContentViewController(_ viewController: UIViewController, animated animated: Bool)
  var popoverContentSize: CGSize
  func setPopoverContentSize(_ size: CGSize, animated animated: Bool)
  var popoverVisible: Bool { get }
  var popoverArrowDirection: UIPopoverArrowDirection { get }
  var passthroughViews: [UIView]?
  func presentPopoverFromRect(_ rect: CGRect, inView view: UIView, permittedArrowDirections arrowDirections: UIPopoverArrowDirection, animated animated: Bool)
  func presentPopoverFromBarButtonItem(_ item: UIBarButtonItem, permittedArrowDirections arrowDirections: UIPopoverArrowDirection, animated animated: Bool)
  func dismissPopoverAnimated(_ animated: Bool)
  @available(tvOS 7.0, *)
  @NSCopying var backgroundColor: UIColor?
  @available(tvOS 5.0, *)
  var popoverLayoutMargins: UIEdgeInsets
  @available(tvOS 5.0, *)
  var popoverBackgroundViewClass: AnyClass?
}
protocol UIPopoverControllerDelegate : NSObjectProtocol {
  @available(tvOS, introduced=3.2, deprecated=9.0)
  optional func popoverControllerShouldDismissPopover(_ popoverController: UIPopoverController) -> Bool
  @available(tvOS, introduced=3.2, deprecated=9.0)
  optional func popoverControllerDidDismissPopover(_ popoverController: UIPopoverController)
  @available(tvOS, introduced=7.0, deprecated=9.0)
  optional func popoverController(_ popoverController: UIPopoverController, willRepositionPopoverToRect rect: UnsafeMutablePointer<CGRect>, inView view: AutoreleasingUnsafeMutablePointer<UIView?>)
}

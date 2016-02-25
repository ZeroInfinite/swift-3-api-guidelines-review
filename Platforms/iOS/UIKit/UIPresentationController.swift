
protocol UIAdaptivePresentationControllerDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func adaptivePresentationStyleForPresentationController(_ controller: UIPresentationController) -> UIModalPresentationStyle
  @available(iOS 8.3, *)
  optional func adaptivePresentationStyleForPresentationController(_ controller: UIPresentationController, traitCollection traitCollection: UITraitCollection) -> UIModalPresentationStyle
  @available(iOS 8.0, *)
  optional func presentationController(_ controller: UIPresentationController, viewControllerForAdaptivePresentationStyle style: UIModalPresentationStyle) -> UIViewController?
  @available(iOS 8.3, *)
  optional func presentationController(_ presentationController: UIPresentationController, willPresentWithAdaptiveStyle style: UIModalPresentationStyle, transitionCoordinator transitionCoordinator: UIViewControllerTransitionCoordinator?)
}
@available(iOS 8.0, *)
class UIPresentationController : NSObject, UIAppearanceContainer, UITraitEnvironment, UIContentContainer, UIFocusEnvironment {
  var presentingViewController: UIViewController { get }
  var presentedViewController: UIViewController { get }
  var presentationStyle: UIModalPresentationStyle { get }
  var containerView: UIView? { get }
  weak var delegate: @sil_weak UIAdaptivePresentationControllerDelegate?
  init(presentedViewController presentedViewController: UIViewController, presentingViewController presentingViewController: UIViewController)
  func adaptivePresentationStyle() -> UIModalPresentationStyle
  @available(iOS 8.3, *)
  func adaptivePresentationStyleForTraitCollection(_ traitCollection: UITraitCollection) -> UIModalPresentationStyle
  func containerViewWillLayoutSubviews()
  func containerViewDidLayoutSubviews()
  func presentedView() -> UIView?
  func frameOfPresentedViewInContainerView() -> CGRect
  func shouldPresentInFullscreen() -> Bool
  func shouldRemovePresentersView() -> Bool
  func presentationTransitionWillBegin()
  func presentationTransitionDidEnd(_ completed: Bool)
  func dismissalTransitionWillBegin()
  func dismissalTransitionDidEnd(_ completed: Bool)
  @NSCopying var overrideTraitCollection: UITraitCollection?
  @available(iOS 8.0, *)
  var traitCollection: UITraitCollection { get }
  @available(iOS 8.0, *)
  func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?)
  @available(iOS 8.0, *)
  var preferredContentSize: CGSize { get }
  @available(iOS 8.0, *)
  func preferredContentSizeDidChangeForChildContentContainer(_ container: UIContentContainer)
  @available(iOS 8.0, *)
  func systemLayoutFittingSizeDidChangeForChildContentContainer(_ container: UIContentContainer)
  @available(iOS 8.0, *)
  func sizeForChildContentContainer(_ container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  @available(iOS 8.0, *)
  func viewWillTransitionToSize(_ size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  @available(iOS 8.0, *)
  func willTransitionToTraitCollection(_ newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  @available(iOS 9.0, *)
  weak var preferredFocusedView: @sil_weak UIView? { get }
  @available(iOS 9.0, *)
  func setNeedsFocusUpdate()
  @available(iOS 9.0, *)
  func updateFocusIfNeeded()
  @available(iOS 9.0, *)
  func shouldUpdateFocusInContext(_ context: UIFocusUpdateContext) -> Bool
  @available(iOS 9.0, *)
  func didUpdateFocusInContext(_ context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
}

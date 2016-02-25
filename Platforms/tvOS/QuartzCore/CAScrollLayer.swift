
class CAScrollLayer : CALayer {
  func scrollToPoint(_ p: CGPoint)
  func scrollToRect(_ r: CGRect)
  var scrollMode: String
}
extension CALayer {
  func scrollPoint(_ p: CGPoint)
  func scrollRectToVisible(_ r: CGRect)
  var visibleRect: CGRect { get }
}
@available(tvOS 2.0, *)
let kCAScrollNone: String
@available(tvOS 2.0, *)
let kCAScrollVertically: String
@available(tvOS 2.0, *)
let kCAScrollHorizontally: String
@available(tvOS 2.0, *)
let kCAScrollBoth: String

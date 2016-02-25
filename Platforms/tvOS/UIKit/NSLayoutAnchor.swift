
@available(tvOS 9.0, *)
class NSLayoutAnchor : NSObject {
  func constraintEqualToAnchor(_ anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToAnchor(_ anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToAnchor(_ anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintEqualToAnchor(_ anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToAnchor(_ anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToAnchor(_ anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
}
@available(tvOS 9.0, *)
class NSLayoutXAxisAnchor : NSLayoutAnchor {
}
@available(tvOS 9.0, *)
class NSLayoutYAxisAnchor : NSLayoutAnchor {
}
@available(tvOS 9.0, *)
class NSLayoutDimension : NSLayoutAnchor {
  func constraintEqualToConstant(_ c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToConstant(_ c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToConstant(_ c: CGFloat) -> NSLayoutConstraint!
  func constraintEqualToAnchor(_ anchor: NSLayoutDimension!, multiplier m: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToAnchor(_ anchor: NSLayoutDimension!, multiplier m: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToAnchor(_ anchor: NSLayoutDimension!, multiplier m: CGFloat) -> NSLayoutConstraint!
  func constraintEqualToAnchor(_ anchor: NSLayoutDimension!, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToAnchor(_ anchor: NSLayoutDimension!, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToAnchor(_ anchor: NSLayoutDimension!, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint!
}

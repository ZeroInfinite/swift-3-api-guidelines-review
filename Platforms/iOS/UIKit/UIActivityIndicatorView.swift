
enum UIActivityIndicatorViewStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case WhiteLarge
  case White
  case Gray
}
@available(iOS 2.0, *)
class UIActivityIndicatorView : UIView, NSCoding {
  init(activityIndicatorStyle style: UIActivityIndicatorViewStyle)
  var activityIndicatorViewStyle: UIActivityIndicatorViewStyle
  var hidesWhenStopped: Bool
  @available(iOS 5.0, *)
  var color: UIColor?
  func startAnimating()
  func stopAnimating()
  func isAnimating() -> Bool
}

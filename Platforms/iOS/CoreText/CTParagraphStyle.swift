
class CTParagraphStyle {
}
@available(*, deprecated, renamed="CTParagraphStyle")
typealias CTParagraphStyleRef = CTParagraphStyle
@available(iOS 3.2, *)
func CTParagraphStyleGetTypeID() -> CFTypeID
enum CTTextAlignment : UInt8 {
  init?(rawValue rawValue: UInt8)
  var rawValue: UInt8 { get }
  @available(iOS 6.0, *)
  case Left
  @available(iOS 6.0, *)
  case Right
  @available(iOS 6.0, *)
  case Center
  @available(iOS 6.0, *)
  case Justified
  @available(iOS 6.0, *)
  case Natural
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTLeftTextAlignment: CTTextAlignment { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTRightTextAlignment: CTTextAlignment { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTCenterTextAlignment: CTTextAlignment { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTJustifiedTextAlignment: CTTextAlignment { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTNaturalTextAlignment: CTTextAlignment { get }
}
enum CTLineBreakMode : UInt8 {
  init?(rawValue rawValue: UInt8)
  var rawValue: UInt8 { get }
  case ByWordWrapping
  case ByCharWrapping
  case ByClipping
  case ByTruncatingHead
  case ByTruncatingTail
  case ByTruncatingMiddle
}
enum CTWritingDirection : Int8 {
  init?(rawValue rawValue: Int8)
  var rawValue: Int8 { get }
  case Natural
  case LeftToRight
  case RightToLeft
}
enum CTParagraphStyleSpecifier : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Alignment
  case FirstLineHeadIndent
  case HeadIndent
  case TailIndent
  case TabStops
  case DefaultTabInterval
  case LineBreakMode
  case LineHeightMultiple
  case MaximumLineHeight
  case MinimumLineHeight
  case LineSpacing
  case ParagraphSpacing
  case ParagraphSpacingBefore
  case BaseWritingDirection
  case MaximumLineSpacing
  case MinimumLineSpacing
  case LineSpacingAdjustment
  case LineBoundsOptions
  case Count
}
struct CTParagraphStyleSetting {
  var spec: CTParagraphStyleSpecifier
  var valueSize: Int
  var value: UnsafePointer<Void>
}
@available(iOS 3.2, *)
func CTParagraphStyleCreate(_ settings: UnsafePointer<CTParagraphStyleSetting>, _ settingCount: Int) -> CTParagraphStyle
@available(iOS 3.2, *)
func CTParagraphStyleCreateCopy(_ paragraphStyle: CTParagraphStyle) -> CTParagraphStyle
@available(iOS 3.2, *)
func CTParagraphStyleGetValueForSpecifier(_ paragraphStyle: CTParagraphStyle, _ spec: CTParagraphStyleSpecifier, _ valueBufferSize: Int, _ valueBuffer: UnsafeMutablePointer<Void>) -> Bool

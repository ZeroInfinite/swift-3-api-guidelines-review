
class CTLine {
}
@available(*, deprecated, renamed="CTLine")
typealias CTLineRef = CTLine
struct CTLineBoundsOptions : OptionSetType {
  init(rawValue rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var ExcludeTypographicLeading: CTLineBoundsOptions { get }
  static var ExcludeTypographicShifts: CTLineBoundsOptions { get }
  static var UseHangingPunctuation: CTLineBoundsOptions { get }
  static var UseGlyphPathBounds: CTLineBoundsOptions { get }
  static var UseOpticalBounds: CTLineBoundsOptions { get }
  @available(iOS 8.0, *)
  static var IncludeLanguageExtents: CTLineBoundsOptions { get }
}
enum CTLineTruncationType : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Start
  case End
  case Middle
}
@available(iOS 3.2, *)
func CTLineGetTypeID() -> CFTypeID
@available(iOS 3.2, *)
func CTLineCreateWithAttributedString(_ attrString: CFAttributedString) -> CTLine
@available(iOS 3.2, *)
func CTLineCreateTruncatedLine(_ line: CTLine, _ width: Double, _ truncationType: CTLineTruncationType, _ truncationToken: CTLine?) -> CTLine?
@available(iOS 3.2, *)
func CTLineCreateJustifiedLine(_ line: CTLine, _ justificationFactor: CGFloat, _ justificationWidth: Double) -> CTLine?
@available(iOS 3.2, *)
func CTLineGetGlyphCount(_ line: CTLine) -> CFIndex
@available(iOS 3.2, *)
func CTLineGetGlyphRuns(_ line: CTLine) -> CFArray
@available(iOS 3.2, *)
func CTLineGetStringRange(_ line: CTLine) -> CFRange
@available(iOS 3.2, *)
func CTLineGetPenOffsetForFlush(_ line: CTLine, _ flushFactor: CGFloat, _ flushWidth: Double) -> Double
@available(iOS 3.2, *)
func CTLineDraw(_ line: CTLine, _ context: CGContext)
@available(iOS 3.2, *)
func CTLineGetTypographicBounds(_ line: CTLine, _ ascent: UnsafeMutablePointer<CGFloat>, _ descent: UnsafeMutablePointer<CGFloat>, _ leading: UnsafeMutablePointer<CGFloat>) -> Double
@available(iOS 6.0, *)
func CTLineGetBoundsWithOptions(_ line: CTLine, _ options: CTLineBoundsOptions) -> CGRect
@available(iOS 3.2, *)
func CTLineGetTrailingWhitespaceWidth(_ line: CTLine) -> Double
@available(iOS 3.2, *)
func CTLineGetImageBounds(_ line: CTLine, _ context: CGContext?) -> CGRect
@available(iOS 3.2, *)
func CTLineGetStringIndexForPosition(_ line: CTLine, _ position: CGPoint) -> CFIndex
@available(iOS 3.2, *)
func CTLineGetOffsetForStringIndex(_ line: CTLine, _ charIndex: CFIndex, _ secondaryOffset: UnsafeMutablePointer<CGFloat>) -> CGFloat
@available(iOS 9.0, *)
func CTLineEnumerateCaretOffsets(_ line: CTLine, _ block: (Double, CFIndex, Bool, UnsafeMutablePointer<Bool>) -> Void)

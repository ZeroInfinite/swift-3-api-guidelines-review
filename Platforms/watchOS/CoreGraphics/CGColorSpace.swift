
class CGColorSpace {
}
@available(*, deprecated, renamed="CGColorSpace")
typealias CGColorSpaceRef = CGColorSpace
enum CGColorRenderingIntent : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case RenderingIntentDefault
  case RenderingIntentAbsoluteColorimetric
  case RenderingIntentRelativeColorimetric
  case RenderingIntentPerceptual
  case RenderingIntentSaturation
}
enum CGColorSpaceModel : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case Unknown
  case Monochrome
  case RGB
  case CMYK
  case Lab
  case DeviceN
  case Indexed
  case Pattern
}
@available(watchOS 2.0, *)
let kCGColorSpaceGenericGray: CFString
@available(watchOS 2.0, *)
let kCGColorSpaceGenericRGB: CFString
@available(watchOS 2.0, *)
let kCGColorSpaceGenericCMYK: CFString
@available(watchOS 2.0, *)
let kCGColorSpaceGenericRGBLinear: CFString
@available(watchOS 2.0, *)
let kCGColorSpaceAdobeRGB1998: CFString
@available(watchOS 2.0, *)
let kCGColorSpaceSRGB: CFString
@available(watchOS 2.0, *)
let kCGColorSpaceGenericGrayGamma2_2: CFString
@available(watchOS 2.0, *)
let kCGColorSpaceGenericXYZ: CFString
@available(watchOS 2.0, *)
let kCGColorSpaceACESCGLinear: CFString
@available(watchOS 2.0, *)
let kCGColorSpaceITUR_709: CFString
@available(watchOS 2.0, *)
let kCGColorSpaceITUR_2020: CFString
@available(watchOS 2.0, *)
let kCGColorSpaceROMMRGB: CFString
@available(watchOS 2.0, *)
func CGColorSpaceCreateDeviceGray() -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceCreateDeviceRGB() -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceCreateDeviceCMYK() -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceCreateCalibratedGray(_ whitePoint: UnsafePointer<CGFloat>, _ blackPoint: UnsafePointer<CGFloat>, _ gamma: CGFloat) -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceCreateCalibratedRGB(_ whitePoint: UnsafePointer<CGFloat>, _ blackPoint: UnsafePointer<CGFloat>, _ gamma: UnsafePointer<CGFloat>, _ matrix: UnsafePointer<CGFloat>) -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceCreateLab(_ whitePoint: UnsafePointer<CGFloat>, _ blackPoint: UnsafePointer<CGFloat>, _ range: UnsafePointer<CGFloat>) -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceCreateWithICCProfile(_ data: CFData?) -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceCreateICCBased(_ nComponents: Int, _ range: UnsafePointer<CGFloat>, _ profile: CGDataProvider?, _ alternate: CGColorSpace?) -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceCreateIndexed(_ baseSpace: CGColorSpace?, _ lastIndex: Int, _ colorTable: UnsafePointer<UInt8>) -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceCreatePattern(_ baseSpace: CGColorSpace?) -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceCreateWithPlatformColorSpace(_ ref: UnsafePointer<Void>) -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceCreateWithName(_ name: CFString?) -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
func CGColorSpaceGetNumberOfComponents(_ space: CGColorSpace?) -> Int
@available(watchOS 2.0, *)
func CGColorSpaceGetModel(_ space: CGColorSpace?) -> CGColorSpaceModel
@available(watchOS 2.0, *)
func CGColorSpaceGetBaseColorSpace(_ space: CGColorSpace?) -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceGetColorTableCount(_ space: CGColorSpace?) -> Int
@available(watchOS 2.0, *)
func CGColorSpaceGetColorTable(_ space: CGColorSpace?, _ table: UnsafeMutablePointer<UInt8>)
@available(watchOS 2.0, *)
func CGColorSpaceCopyICCProfile(_ space: CGColorSpace?) -> CFData?

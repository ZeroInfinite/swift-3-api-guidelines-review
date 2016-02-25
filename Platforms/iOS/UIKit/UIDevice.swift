
enum UIDeviceOrientation : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Portrait
  case PortraitUpsideDown
  case LandscapeLeft
  case LandscapeRight
  case FaceUp
  case FaceDown
}

extension UIDeviceOrientation {
  var isLandscape: Bool { get }
  var isPortrait: Bool { get }
  var isFlat: Bool { get }
  var isValidInterfaceOrientation: Bool { get }
}
enum UIDeviceBatteryState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Unplugged
  case Charging
  case Full
}
enum UIUserInterfaceIdiom : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Unspecified
  @available(iOS 3.2, *)
  case Phone
  @available(iOS 3.2, *)
  case Pad
  @available(iOS 9.0, *)
  case TV
}
func UIDeviceOrientationIsPortrait(_ orientation: UIDeviceOrientation) -> Bool
func UIDeviceOrientationIsLandscape(_ orientation: UIDeviceOrientation) -> Bool
@available(iOS 2.0, *)
class UIDevice : NSObject {
  class func currentDevice() -> UIDevice
  var name: String { get }
  var model: String { get }
  var localizedModel: String { get }
  var systemName: String { get }
  var systemVersion: String { get }
  var orientation: UIDeviceOrientation { get }
  @available(iOS 6.0, *)
  var identifierForVendor: NSUUID? { get }
  var generatesDeviceOrientationNotifications: Bool { get }
  func beginGeneratingDeviceOrientationNotifications()
  func endGeneratingDeviceOrientationNotifications()
  @available(iOS 3.0, *)
  var batteryMonitoringEnabled: Bool
  @available(iOS 3.0, *)
  var batteryState: UIDeviceBatteryState { get }
  @available(iOS 3.0, *)
  var batteryLevel: Float { get }
  @available(iOS 3.0, *)
  var proximityMonitoringEnabled: Bool
  @available(iOS 3.0, *)
  var proximityState: Bool { get }
  @available(iOS 4.0, *)
  var multitaskingSupported: Bool { get }
  @available(iOS 3.2, *)
  var userInterfaceIdiom: UIUserInterfaceIdiom { get }
  @available(iOS 4.2, *)
  func playInputClick()
}
protocol UIInputViewAudioFeedback : NSObjectProtocol {
  optional var enableInputClicksWhenVisible: Bool { get }
}
func UI_USER_INTERFACE_IDIOM() -> UIUserInterfaceIdiom
let UIDeviceOrientationDidChangeNotification: String
@available(iOS 3.0, *)
let UIDeviceBatteryStateDidChangeNotification: String
@available(iOS 3.0, *)
let UIDeviceBatteryLevelDidChangeNotification: String
@available(iOS 3.0, *)
let UIDeviceProximityStateDidChangeNotification: String

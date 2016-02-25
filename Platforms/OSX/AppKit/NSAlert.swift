
enum NSAlertStyle : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case WarningAlertStyle
  case InformationalAlertStyle
  case CriticalAlertStyle
}
class NSAlert : NSObject {
  /*not inherited*/ init(error error: NSError)
  var messageText: String
  var informativeText: String
  var icon: NSImage!
  func addButtonWithTitle(_ title: String) -> NSButton
  var buttons: [NSButton] { get }
  var showsHelp: Bool
  var helpAnchor: String?
  var alertStyle: NSAlertStyle
  unowned(unsafe) var delegate: @sil_unmanaged NSAlertDelegate?
  @available(OSX 10.5, *)
  var showsSuppressionButton: Bool
  @available(OSX 10.5, *)
  var suppressionButton: NSButton? { get }
  @available(OSX 10.5, *)
  var accessoryView: NSView?
  @available(OSX 10.5, *)
  func layout()
  func runModal() -> NSModalResponse
  @available(OSX, introduced=10.3, deprecated=10.10, message="Use -beginSheetModalForWindow:completionHandler: instead")
  func beginSheetModalForWindow(_ window: NSWindow, modalDelegate delegate: AnyObject?, didEndSelector didEndSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.9, *)
  func beginSheetModalForWindow(_ sheetWindow: NSWindow, completionHandler handler: ((NSModalResponse) -> Void)?)
  var window: NSWindow { get }
}
var NSAlertFirstButtonReturn: Int { get }
var NSAlertSecondButtonReturn: Int { get }
var NSAlertThirdButtonReturn: Int { get }
protocol NSAlertDelegate : NSObjectProtocol {
  optional func alertShowHelp(_ alert: NSAlert) -> Bool
}

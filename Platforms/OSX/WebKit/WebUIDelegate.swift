
var WebMenuItemTagOpenLinkInNewWindow: Int { get }
var WebMenuItemTagDownloadLinkToDisk: Int { get }
var WebMenuItemTagCopyLinkToClipboard: Int { get }
var WebMenuItemTagOpenImageInNewWindow: Int { get }
var WebMenuItemTagDownloadImageToDisk: Int { get }
var WebMenuItemTagCopyImageToClipboard: Int { get }
var WebMenuItemTagOpenFrameInNewWindow: Int { get }
var WebMenuItemTagCopy: Int { get }
var WebMenuItemTagGoBack: Int { get }
var WebMenuItemTagGoForward: Int { get }
var WebMenuItemTagStop: Int { get }
var WebMenuItemTagReload: Int { get }
var WebMenuItemTagCut: Int { get }
var WebMenuItemTagPaste: Int { get }
var WebMenuItemTagSpellingGuess: Int { get }
var WebMenuItemTagNoGuessesFound: Int { get }
var WebMenuItemTagIgnoreSpelling: Int { get }
var WebMenuItemTagLearnSpelling: Int { get }
var WebMenuItemTagOther: Int { get }
var WebMenuItemTagSearchInSpotlight: Int { get }
var WebMenuItemTagSearchWeb: Int { get }
var WebMenuItemTagLookUpInDictionary: Int { get }
var WebMenuItemTagOpenWithDefaultApplication: Int { get }
var WebMenuItemPDFActualSize: Int { get }
var WebMenuItemPDFZoomIn: Int { get }
var WebMenuItemPDFZoomOut: Int { get }
var WebMenuItemPDFAutoSize: Int { get }
var WebMenuItemPDFSinglePage: Int { get }
var WebMenuItemPDFFacingPages: Int { get }
var WebMenuItemPDFContinuous: Int { get }
var WebMenuItemPDFNextPage: Int { get }
var WebMenuItemPDFPreviousPage: Int { get }
struct WebDragDestinationAction : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var None: WebDragDestinationAction { get }
  static var DHTML: WebDragDestinationAction { get }
  static var Edit: WebDragDestinationAction { get }
  static var Load: WebDragDestinationAction { get }
  static var Any: WebDragDestinationAction { get }
}
struct WebDragSourceAction : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var None: WebDragSourceAction { get }
  static var DHTML: WebDragSourceAction { get }
  static var Image: WebDragSourceAction { get }
  static var Link: WebDragSourceAction { get }
  static var Selection: WebDragSourceAction { get }
  static var Any: WebDragSourceAction { get }
}
protocol WebOpenPanelResultListener : NSObjectProtocol {
  func chooseFilename(_ fileName: String!)
  @available(OSX 10.6, *)
  func chooseFilenames(_ fileNames: [AnyObject]!)
  func cancel()
}
protocol WebUIDelegate : NSObjectProtocol {
  optional func webView(_ sender: WebView!, createWebViewWithRequest request: NSURLRequest!) -> WebView!
  optional func webViewShow(_ sender: WebView!)
  optional func webView(_ sender: WebView!, createWebViewModalDialogWithRequest request: NSURLRequest!) -> WebView!
  optional func webViewRunModal(_ sender: WebView!)
  optional func webViewClose(_ sender: WebView!)
  optional func webViewFocus(_ sender: WebView!)
  optional func webViewUnfocus(_ sender: WebView!)
  optional func webViewFirstResponder(_ sender: WebView!) -> NSResponder!
  optional func webView(_ sender: WebView!, makeFirstResponder responder: NSResponder!)
  optional func webView(_ sender: WebView!, setStatusText text: String!)
  optional func webViewStatusText(_ sender: WebView!) -> String!
  optional func webViewAreToolbarsVisible(_ sender: WebView!) -> Bool
  optional func webView(_ sender: WebView!, setToolbarsVisible visible: Bool)
  optional func webViewIsStatusBarVisible(_ sender: WebView!) -> Bool
  optional func webView(_ sender: WebView!, setStatusBarVisible visible: Bool)
  optional func webViewIsResizable(_ sender: WebView!) -> Bool
  optional func webView(_ sender: WebView!, setResizable resizable: Bool)
  optional func webView(_ sender: WebView!, setFrame frame: NSRect)
  optional func webViewFrame(_ sender: WebView!) -> NSRect
  optional func webView(_ sender: WebView!, runJavaScriptAlertPanelWithMessage message: String!, initiatedByFrame frame: WebFrame!)
  optional func webView(_ sender: WebView!, runJavaScriptConfirmPanelWithMessage message: String!, initiatedByFrame frame: WebFrame!) -> Bool
  optional func webView(_ sender: WebView!, runJavaScriptTextInputPanelWithPrompt prompt: String!, defaultText defaultText: String!, initiatedByFrame frame: WebFrame!) -> String!
  optional func webView(_ sender: WebView!, runBeforeUnloadConfirmPanelWithMessage message: String!, initiatedByFrame frame: WebFrame!) -> Bool
  optional func webView(_ sender: WebView!, runOpenPanelForFileButtonWithResultListener resultListener: WebOpenPanelResultListener!)
  @available(OSX 10.6, *)
  optional func webView(_ sender: WebView!, runOpenPanelForFileButtonWithResultListener resultListener: WebOpenPanelResultListener!, allowMultipleFiles allowMultipleFiles: Bool)
  @available(OSX 10.0, *)
  optional func webView(_ sender: WebView!, mouseDidMoveOverElement elementInformation: [NSObject : AnyObject]!, modifierFlags modifierFlags: Int)
  @available(OSX 10.0, *)
  optional func webView(_ sender: WebView!, contextMenuItemsForElement element: [NSObject : AnyObject]!, defaultMenuItems defaultMenuItems: [AnyObject]!) -> [AnyObject]!
  optional func webView(_ webView: WebView!, validateUserInterfaceItem item: NSValidatedUserInterfaceItem!, defaultValidation defaultValidation: Bool) -> Bool
  optional func webView(_ webView: WebView!, shouldPerformAction action: Selector, fromSender sender: AnyObject!) -> Bool
  optional func webView(_ webView: WebView!, dragDestinationActionMaskForDraggingInfo draggingInfo: NSDraggingInfo!) -> Int
  optional func webView(_ webView: WebView!, willPerformDragDestinationAction action: WebDragDestinationAction, forDraggingInfo draggingInfo: NSDraggingInfo!)
  optional func webView(_ webView: WebView!, dragSourceActionMaskForPoint point: NSPoint) -> Int
  optional func webView(_ webView: WebView!, willPerformDragSourceAction action: WebDragSourceAction, fromPoint point: NSPoint, withPasteboard pasteboard: NSPasteboard!)
  optional func webView(_ sender: WebView!, printFrameView frameView: WebFrameView!)
  optional func webViewHeaderHeight(_ sender: WebView!) -> Float
  optional func webViewFooterHeight(_ sender: WebView!) -> Float
  optional func webView(_ sender: WebView!, drawHeaderInRect rect: NSRect)
  optional func webView(_ sender: WebView!, drawFooterInRect rect: NSRect)
}

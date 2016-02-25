
protocol NSSearchFieldDelegate : NSTextFieldDelegate {
  @available(OSX 10.11, *)
  optional func searchFieldDidStartSearching(_ sender: NSSearchField)
  @available(OSX 10.11, *)
  optional func searchFieldDidEndSearching(_ sender: NSSearchField)
}
class NSSearchField : NSTextField {
  @available(OSX 10.11, *)
  func rectForSearchTextWhenCentered(_ isCentered: Bool) -> NSRect
  @available(OSX 10.11, *)
  func rectForSearchButtonWhenCentered(_ isCentered: Bool) -> NSRect
  @available(OSX 10.11, *)
  func rectForCancelButtonWhenCentered(_ isCentered: Bool) -> NSRect
  var recentSearches: [String]
  var recentsAutosaveName: String?
  @available(OSX 10.10, *)
  var searchMenuTemplate: NSMenu?
  @available(OSX 10.10, *)
  var sendsWholeSearchString: Bool
  @available(OSX 10.10, *)
  var maximumRecents: Int
  @available(OSX 10.10, *)
  var sendsSearchStringImmediately: Bool
  @available(OSX 10.11, *)
  var centersPlaceholder: Bool
}

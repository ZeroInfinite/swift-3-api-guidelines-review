
typealias UIAccessibilityTraits = UInt64
var UIAccessibilityTraitNone: UIAccessibilityTraits
var UIAccessibilityTraitButton: UIAccessibilityTraits
var UIAccessibilityTraitLink: UIAccessibilityTraits
@available(tvOS 6.0, *)
var UIAccessibilityTraitHeader: UIAccessibilityTraits
var UIAccessibilityTraitSearchField: UIAccessibilityTraits
var UIAccessibilityTraitImage: UIAccessibilityTraits
var UIAccessibilityTraitSelected: UIAccessibilityTraits
var UIAccessibilityTraitPlaysSound: UIAccessibilityTraits
var UIAccessibilityTraitKeyboardKey: UIAccessibilityTraits
var UIAccessibilityTraitStaticText: UIAccessibilityTraits
var UIAccessibilityTraitSummaryElement: UIAccessibilityTraits
var UIAccessibilityTraitNotEnabled: UIAccessibilityTraits
var UIAccessibilityTraitUpdatesFrequently: UIAccessibilityTraits
@available(tvOS 4.0, *)
var UIAccessibilityTraitStartsMediaSession: UIAccessibilityTraits
@available(tvOS 4.0, *)
var UIAccessibilityTraitAdjustable: UIAccessibilityTraits
@available(tvOS 5.0, *)
var UIAccessibilityTraitAllowsDirectInteraction: UIAccessibilityTraits
@available(tvOS 5.0, *)
var UIAccessibilityTraitCausesPageTurn: UIAccessibilityTraits
typealias UIAccessibilityNotifications = UInt32
var UIAccessibilityScreenChangedNotification: UIAccessibilityNotifications
var UIAccessibilityLayoutChangedNotification: UIAccessibilityNotifications
@available(tvOS 4.0, *)
var UIAccessibilityAnnouncementNotification: UIAccessibilityNotifications
@available(tvOS 6.0, *)
let UIAccessibilityAnnouncementDidFinishNotification: String
@available(tvOS 6.0, *)
let UIAccessibilityAnnouncementKeyStringValue: String
@available(tvOS 6.0, *)
let UIAccessibilityAnnouncementKeyWasSuccessful: String
@available(tvOS 9.0, *)
let UIAccessibilityElementFocusedNotification: String
@available(tvOS 9.0, *)
let UIAccessibilityFocusedElementKey: String
@available(tvOS 9.0, *)
let UIAccessibilityUnfocusedElementKey: String
@available(tvOS 9.0, *)
let UIAccessibilityAssistiveTechnologyKey: String
@available(tvOS 4.2, *)
var UIAccessibilityPageScrolledNotification: UIAccessibilityNotifications
@available(tvOS 8.0, *)
var UIAccessibilityPauseAssistiveTechnologyNotification: UIAccessibilityNotifications
@available(tvOS 8.0, *)
var UIAccessibilityResumeAssistiveTechnologyNotification: UIAccessibilityNotifications
@available(tvOS 8.0, *)
let UIAccessibilityNotificationSwitchControlIdentifier: String
@available(tvOS 9.0, *)
let UIAccessibilityNotificationVoiceOverIdentifier: String
@available(tvOS 8.0, *)
enum UIAccessibilityNavigationStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case Separate
  case Combined
}
@available(tvOS 7.0, *)
let UIAccessibilitySpeechAttributePunctuation: String
@available(tvOS 7.0, *)
let UIAccessibilitySpeechAttributeLanguage: String
@available(tvOS 7.0, *)
let UIAccessibilitySpeechAttributePitch: String

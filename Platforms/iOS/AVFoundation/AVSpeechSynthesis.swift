
@available(iOS 7.0, *)
enum AVSpeechBoundary : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Immediate
  case Word
}
@available(iOS 9.0, *)
enum AVSpeechSynthesisVoiceQuality : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Enhanced
}
@available(iOS 7.0, *)
let AVSpeechUtteranceMinimumSpeechRate: Float
@available(iOS 7.0, *)
let AVSpeechUtteranceMaximumSpeechRate: Float
@available(iOS 7.0, *)
let AVSpeechUtteranceDefaultSpeechRate: Float
@available(iOS 9.0, *)
let AVSpeechSynthesisVoiceIdentifierAlex: String
@available(iOS 7.0, *)
class AVSpeechSynthesisVoice : NSObject, NSSecureCoding {
  class func speechVoices() -> [AVSpeechSynthesisVoice]
  class func currentLanguageCode() -> String
  /*not inherited*/ init?(language languageCode: String?)
  @available(iOS 9.0, *)
  /*not inherited*/ init?(identifier: String)
  var language: String { get }
  @available(iOS 9.0, *)
  var identifier: String { get }
  @available(iOS 9.0, *)
  var name: String { get }
  @available(iOS 9.0, *)
  var quality: AVSpeechSynthesisVoiceQuality { get }
  init()
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 7.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 7.0, *)
class AVSpeechUtterance : NSObject, NSCopying, NSSecureCoding {
  init(string: String)
  var voice: AVSpeechSynthesisVoice?
  var speechString: String { get }
  var rate: Float
  var pitchMultiplier: Float
  var volume: Float
  var preUtteranceDelay: NSTimeInterval
  var postUtteranceDelay: NSTimeInterval
  init()
  @available(iOS 7.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 7.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 7.0, *)
class AVSpeechSynthesizer : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged AVSpeechSynthesizerDelegate?
  var speaking: Bool { get }
  var paused: Bool { get }
  func speakUtterance(utterance: AVSpeechUtterance)
  func stopSpeakingAtBoundary(boundary: AVSpeechBoundary) -> Bool
  func pauseSpeakingAtBoundary(boundary: AVSpeechBoundary) -> Bool
  func continueSpeaking() -> Bool
  init()
}
protocol AVSpeechSynthesizerDelegate : NSObjectProtocol {
  @available(iOS 7.0, *)
  optional func speechSynthesizer(synthesizer: AVSpeechSynthesizer, didStartSpeechUtterance utterance: AVSpeechUtterance)
  @available(iOS 7.0, *)
  optional func speechSynthesizer(synthesizer: AVSpeechSynthesizer, didFinishSpeechUtterance utterance: AVSpeechUtterance)
  @available(iOS 7.0, *)
  optional func speechSynthesizer(synthesizer: AVSpeechSynthesizer, didPauseSpeechUtterance utterance: AVSpeechUtterance)
  @available(iOS 7.0, *)
  optional func speechSynthesizer(synthesizer: AVSpeechSynthesizer, didContinueSpeechUtterance utterance: AVSpeechUtterance)
  @available(iOS 7.0, *)
  optional func speechSynthesizer(synthesizer: AVSpeechSynthesizer, didCancelSpeechUtterance utterance: AVSpeechUtterance)
  @available(iOS 7.0, *)
  optional func speechSynthesizer(synthesizer: AVSpeechSynthesizer, willSpeakRangeOfSpeechString characterRange: NSRange, utterance: AVSpeechUtterance)
}
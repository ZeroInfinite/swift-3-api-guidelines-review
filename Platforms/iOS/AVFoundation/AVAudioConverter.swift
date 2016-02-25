
enum AVAudioConverterPrimeMethod : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Pre
  case Normal
  case None
}
struct AVAudioConverterPrimeInfo {
  var leadingFrames: AVAudioFrameCount
  var trailingFrames: AVAudioFrameCount
  init()
  init(leadingFrames leadingFrames: AVAudioFrameCount, trailingFrames trailingFrames: AVAudioFrameCount)
}
@available(iOS 9.0, *)
enum AVAudioConverterInputStatus : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case HaveData
  case NoDataNow
  case EndOfStream
}
@available(iOS 9.0, *)
enum AVAudioConverterOutputStatus : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case HaveData
  case InputRanDry
  case EndOfStream
  case Error
}
typealias AVAudioConverterInputBlock = (AVAudioPacketCount, UnsafeMutablePointer<AVAudioConverterInputStatus>) -> AVAudioBuffer?
@available(iOS 9.0, *)
class AVAudioConverter : NSObject {
  init(fromFormat fromFormat: AVAudioFormat, toFormat toFormat: AVAudioFormat)
  func reset()
  var inputFormat: AVAudioFormat { get }
  var outputFormat: AVAudioFormat { get }
  var channelMap: [NSNumber]
  var magicCookie: NSData?
  var downmix: Bool
  var dither: Bool
  var sampleRateConverterQuality: Int
  var sampleRateConverterAlgorithm: String
  var primeMethod: AVAudioConverterPrimeMethod
  var primeInfo: AVAudioConverterPrimeInfo
  func convertToBuffer(_ outputBuffer: AVAudioPCMBuffer, fromBuffer inputBuffer: AVAudioPCMBuffer) throws
  func convertToBuffer(_ outputBuffer: AVAudioBuffer, error outError: NSErrorPointer, withInputFromBlock inputBlock: AVAudioConverterInputBlock) -> AVAudioConverterOutputStatus
}
extension AVAudioConverter {
  var bitRate: Int
  var bitRateStrategy: String?
  var maximumOutputPacketSize: Int { get }
  var availableEncodeBitRates: [NSNumber]? { get }
  var applicableEncodeBitRates: [NSNumber]? { get }
  var availableEncodeSampleRates: [NSNumber]? { get }
  var applicableEncodeSampleRates: [NSNumber]? { get }
  var availableEncodeChannelLayoutTags: [NSNumber]? { get }
}

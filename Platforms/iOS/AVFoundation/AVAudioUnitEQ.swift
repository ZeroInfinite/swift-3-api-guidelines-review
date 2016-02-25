
@available(iOS 8.0, *)
enum AVAudioUnitEQFilterType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Parametric
  case LowPass
  case HighPass
  case ResonantLowPass
  case ResonantHighPass
  case BandPass
  case BandStop
  case LowShelf
  case HighShelf
  case ResonantLowShelf
  case ResonantHighShelf
}
@available(iOS 8.0, *)
class AVAudioUnitEQFilterParameters : NSObject {
  var filterType: AVAudioUnitEQFilterType
  var frequency: Float
  var bandwidth: Float
  var gain: Float
  var bypass: Bool
}
@available(iOS 8.0, *)
class AVAudioUnitEQ : AVAudioUnitEffect {
  init(numberOfBands numberOfBands: Int)
  var bands: [AVAudioUnitEQFilterParameters] { get }
  var globalGain: Float
}

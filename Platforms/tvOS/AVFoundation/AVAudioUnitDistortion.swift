
@available(tvOS 8.0, *)
enum AVAudioUnitDistortionPreset : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case DrumsBitBrush
  case DrumsBufferBeats
  case DrumsLoFi
  case MultiBrokenSpeaker
  case MultiCellphoneConcert
  case MultiDecimated1
  case MultiDecimated2
  case MultiDecimated3
  case MultiDecimated4
  case MultiDistortedFunk
  case MultiDistortedCubed
  case MultiDistortedSquared
  case MultiEcho1
  case MultiEcho2
  case MultiEchoTight1
  case MultiEchoTight2
  case MultiEverythingIsBroken
  case SpeechAlienChatter
  case SpeechCosmicInterference
  case SpeechGoldenPi
  case SpeechRadioTower
  case SpeechWaves
}
@available(tvOS 8.0, *)
class AVAudioUnitDistortion : AVAudioUnitEffect {
  func loadFactoryPreset(_ preset: AVAudioUnitDistortionPreset)
  var preGain: Float
  var wetDryMix: Float
}

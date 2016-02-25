
@available(iOS 4.0, *)
class AVAudioMix : NSObject, NSCopying, NSMutableCopying {
  var inputParameters: [AVAudioMixInputParameters] { get }
  @available(iOS 4.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 4.0, *)
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
}
@available(iOS 4.0, *)
class AVMutableAudioMix : AVAudioMix {
}
@available(iOS 4.0, *)
class AVAudioMixInputParameters : NSObject, NSCopying, NSMutableCopying {
  var trackID: CMPersistentTrackID { get }
  @available(iOS 7.0, *)
  var audioTimePitchAlgorithm: String? { get }
  @available(iOS 6.0, *)
  var audioTapProcessor: MTAudioProcessingTap? { get }
  func getVolumeRampForTime(_ time: CMTime, startVolume startVolume: UnsafeMutablePointer<Float>, endVolume endVolume: UnsafeMutablePointer<Float>, timeRange timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  @available(iOS 4.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 4.0, *)
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
}
@available(iOS 4.0, *)
class AVMutableAudioMixInputParameters : AVAudioMixInputParameters {
  convenience init(track track: AVAssetTrack?)
  func setVolumeRampFromStartVolume(_ startVolume: Float, toEndVolume endVolume: Float, timeRange timeRange: CMTimeRange)
  func setVolume(_ volume: Float, atTime time: CMTime)
}

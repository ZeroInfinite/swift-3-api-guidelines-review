
@available(iOS 3.0, *)
class AVAudioRecorder : NSObject {
  init(URL url: NSURL, settings settings: [String : AnyObject]) throws
  func prepareToRecord() -> Bool
  func record() -> Bool
  @available(iOS 6.0, *)
  func recordAtTime(_ time: NSTimeInterval) -> Bool
  func recordForDuration(_ duration: NSTimeInterval) -> Bool
  @available(iOS 6.0, *)
  func recordAtTime(_ time: NSTimeInterval, forDuration duration: NSTimeInterval) -> Bool
  func pause()
  func stop()
  func deleteRecording() -> Bool
  var recording: Bool { get }
  var url: NSURL { get }
  var settings: [String : AnyObject] { get }
  unowned(unsafe) var delegate: @sil_unmanaged AVAudioRecorderDelegate?
  var currentTime: NSTimeInterval { get }
  @available(iOS 6.0, *)
  var deviceCurrentTime: NSTimeInterval { get }
  var meteringEnabled: Bool
  func updateMeters()
  func peakPowerForChannel(_ channelNumber: Int) -> Float
  func averagePowerForChannel(_ channelNumber: Int) -> Float
  @available(iOS 7.0, *)
  var channelAssignments: [NSNumber]?
}
protocol AVAudioRecorderDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool)
  @available(iOS 3.0, *)
  optional func audioRecorderEncodeErrorDidOccur(_ recorder: AVAudioRecorder, error error: NSError?)
  @available(iOS, introduced=2.2, deprecated=8.0)
  optional func audioRecorderBeginInterruption(_ recorder: AVAudioRecorder)
  @available(iOS, introduced=6.0, deprecated=8.0)
  optional func audioRecorderEndInterruption(_ recorder: AVAudioRecorder, withOptions flags: Int)
}

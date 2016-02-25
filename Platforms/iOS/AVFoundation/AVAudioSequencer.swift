
typealias AVMusicTimeStamp = Float64
@available(iOS 9.0, *)
struct AVMusicSequenceLoadOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var SMF_PreserveTracks: AVMusicSequenceLoadOptions { get }
  static var SMF_ChannelsToTracks: AVMusicSequenceLoadOptions { get }
}
struct _AVBeatRange {
  var start: AVMusicTimeStamp
  var length: AVMusicTimeStamp
  init()
  init(start start: AVMusicTimeStamp, length length: AVMusicTimeStamp)
}
typealias AVBeatRange = _AVBeatRange
func AVMakeBeatRange(_ startBeat: AVMusicTimeStamp, _ lengthInBeats: AVMusicTimeStamp) -> AVBeatRange
@available(iOS 9.0, *)
class AVAudioSequencer : NSObject {
  init(audioEngine engine: AVAudioEngine)
  func loadFromURL(_ fileURL: NSURL, options options: AVMusicSequenceLoadOptions) throws
  func loadFromData(_ data: NSData, options options: AVMusicSequenceLoadOptions) throws
  func writeToURL(_ fileURL: NSURL, SMPTEResolution resolution: Int, replaceExisting replace: Bool) throws
  func dataWithSMPTEResolution(_ SMPTEResolution: Int, error outError: NSErrorPointer) -> NSData
  func secondsForBeats(_ beats: AVMusicTimeStamp) -> NSTimeInterval
  func beatsForSeconds(_ seconds: NSTimeInterval) -> AVMusicTimeStamp
  var tracks: [AVMusicTrack] { get }
  var tempoTrack: AVMusicTrack { get }
  var userInfo: [String : AnyObject] { get }
}
extension AVAudioSequencer {
  var currentPositionInSeconds: NSTimeInterval
  var currentPositionInBeats: NSTimeInterval
  var playing: Bool { get }
  var rate: Float
  func hostTimeForBeats(_ inBeats: AVMusicTimeStamp, error outError: NSErrorPointer) -> UInt64
  func beatsForHostTime(_ inHostTime: UInt64, error outError: NSErrorPointer) -> AVMusicTimeStamp
  func prepareToPlay()
  func start() throws
  func stop()
}
@available(iOS 9.0, *)
class AVMusicTrack : NSObject {
  var destinationAudioUnit: AVAudioUnit?
  var destinationMIDIEndpoint: MIDIEndpointRef
  var loopRange: AVBeatRange
  var loopingEnabled: Bool
  var numberOfLoops: Int
  var offsetTime: AVMusicTimeStamp
  var muted: Bool
  var soloed: Bool
  var lengthInBeats: AVMusicTimeStamp
  var lengthInSeconds: NSTimeInterval
  var timeResolution: Int { get }
}
@available(iOS 8.0, *)
enum AVMusicTrackLoopCount : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Forever
}

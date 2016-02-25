
@available(tvOS 4.0, *)
let AVAssetImageGeneratorApertureModeCleanAperture: String
@available(tvOS 4.0, *)
let AVAssetImageGeneratorApertureModeProductionAperture: String
@available(tvOS 4.0, *)
let AVAssetImageGeneratorApertureModeEncodedPixels: String
enum AVAssetImageGeneratorResult : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Succeeded
  case Failed
  case Cancelled
}
@available(tvOS 4.0, *)
class AVAssetImageGenerator : NSObject {
  @available(tvOS 6.0, *)
  var asset: AVAsset { get }
  var appliesPreferredTrackTransform: Bool
  var maximumSize: CGSize
  var apertureMode: String?
  @NSCopying var videoComposition: AVVideoComposition?
  @available(tvOS 7.0, *)
  var customVideoCompositor: AVVideoCompositing? { get }
  @available(tvOS 5.0, *)
  var requestedTimeToleranceBefore: CMTime
  @available(tvOS 5.0, *)
  var requestedTimeToleranceAfter: CMTime
  init(asset asset: AVAsset)
  func copyCGImageAtTime(_ requestedTime: CMTime, actualTime actualTime: UnsafeMutablePointer<CMTime>) throws -> CGImage
  func generateCGImagesAsynchronouslyForTimes(_ requestedTimes: [NSValue], completionHandler handler: AVAssetImageGeneratorCompletionHandler)
  func cancelAllCGImageGeneration()
}
typealias AVAssetImageGeneratorCompletionHandler = (CMTime, CGImage?, CMTime, AVAssetImageGeneratorResult, NSError?) -> Void

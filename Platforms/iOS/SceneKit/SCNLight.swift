
let SCNLightTypeAmbient: String
let SCNLightTypeOmni: String
let SCNLightTypeDirectional: String
let SCNLightTypeSpot: String
@available(iOS 8.0, *)
enum SCNShadowMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Forward
  case Deferred
  case Modulated
}
@available(iOS 8.0, *)
class SCNLight : NSObject, SCNAnimatable, SCNTechniqueSupport, NSCopying, NSSecureCoding {
  var type: String
  var color: AnyObject
  var name: String?
  var castsShadow: Bool
  var shadowColor: AnyObject
  var shadowRadius: CGFloat
  @available(iOS 8.0, *)
  var shadowMapSize: CGSize
  @available(iOS 8.0, *)
  var shadowSampleCount: Int
  @available(iOS 8.0, *)
  var shadowMode: SCNShadowMode
  @available(iOS 8.0, *)
  var shadowBias: CGFloat
  @available(iOS 8.0, *)
  var orthographicScale: CGFloat
  @available(iOS 8.0, *)
  var zNear: CGFloat
  @available(iOS 8.0, *)
  var zFar: CGFloat
  @available(iOS 8.0, *)
  var attenuationStartDistance: CGFloat
  @available(iOS 8.0, *)
  var attenuationEndDistance: CGFloat
  @available(iOS 8.0, *)
  var attenuationFalloffExponent: CGFloat
  @available(iOS 8.0, *)
  var spotInnerAngle: CGFloat
  @available(iOS 8.0, *)
  var spotOuterAngle: CGFloat
  @available(iOS 8.0, *)
  var gobo: SCNMaterialProperty? { get }
  @available(iOS 8.0, *)
  var categoryBitMask: Int
  @available(iOS 8.0, *)
  func addAnimation(_ animation: CAAnimation, forKey key: String?)
  @available(iOS 8.0, *)
  func removeAllAnimations()
  @available(iOS 8.0, *)
  func removeAnimationForKey(_ key: String)
  @available(iOS 8.0, *)
  var animationKeys: [String] { get }
  @available(iOS 8.0, *)
  func animationForKey(_ key: String) -> CAAnimation?
  @available(iOS 8.0, *)
  func pauseAnimationForKey(_ key: String)
  @available(iOS 8.0, *)
  func resumeAnimationForKey(_ key: String)
  @available(iOS 8.0, *)
  func isAnimationForKeyPaused(_ key: String) -> Bool
  @available(iOS 8.0, *)
  func removeAnimationForKey(_ key: String, fadeOutDuration duration: CGFloat)
  @available(iOS 8.0, *)
  @NSCopying var technique: SCNTechnique?
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

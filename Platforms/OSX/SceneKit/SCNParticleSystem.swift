
@available(OSX 10.10, *)
let SCNParticlePropertyPosition: String
@available(OSX 10.10, *)
let SCNParticlePropertyAngle: String
@available(OSX 10.10, *)
let SCNParticlePropertyRotationAxis: String
@available(OSX 10.10, *)
let SCNParticlePropertyVelocity: String
@available(OSX 10.10, *)
let SCNParticlePropertyAngularVelocity: String
@available(OSX 10.10, *)
let SCNParticlePropertyLife: String
@available(OSX 10.10, *)
let SCNParticlePropertyColor: String
@available(OSX 10.10, *)
let SCNParticlePropertyOpacity: String
@available(OSX 10.10, *)
let SCNParticlePropertySize: String
@available(OSX 10.10, *)
let SCNParticlePropertyFrame: String
@available(OSX 10.10, *)
let SCNParticlePropertyFrameRate: String
@available(OSX 10.10, *)
let SCNParticlePropertyBounce: String
@available(OSX 10.10, *)
let SCNParticlePropertyCharge: String
@available(OSX 10.10, *)
let SCNParticlePropertyFriction: String
@available(OSX 10.10, *)
let SCNParticlePropertyContactPoint: String
@available(OSX 10.10, *)
let SCNParticlePropertyContactNormal: String
typealias SCNParticleEventBlock = (UnsafeMutablePointer<UnsafeMutablePointer<Void>>, UnsafeMutablePointer<Int>, UnsafeMutablePointer<UInt32>, Int) -> Void
typealias SCNParticleModifierBlock = (UnsafeMutablePointer<UnsafeMutablePointer<Void>>, UnsafeMutablePointer<Int>, Int, Int, Float) -> Void
@available(OSX 10.10, *)
enum SCNParticleSortingMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case None
  case ProjectedDepth
  case Distance
  case OldestFirst
  case YoungestFirst
}
@available(OSX 10.10, *)
enum SCNParticleBlendMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Additive
  case Subtract
  case Multiply
  case Screen
  case Alpha
  case Replace
}
@available(OSX 10.10, *)
enum SCNParticleOrientationMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case BillboardScreenAligned
  case BillboardViewAligned
  case Free
  case BillboardYAligned
}
@available(OSX 10.10, *)
enum SCNParticleBirthLocation : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Surface
  case Volume
  case Vertex
}
@available(OSX 10.10, *)
enum SCNParticleBirthDirection : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Constant
  case SurfaceNormal
  case Random
}
@available(OSX 10.10, *)
enum SCNParticleImageSequenceAnimationMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Repeat
  case Clamp
  case AutoReverse
}
@available(OSX 10.10, *)
enum SCNParticleInputMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case OverLife
  case OverDistance
  case OverOtherProperty
}
@available(OSX 10.10, *)
enum SCNParticleModifierStage : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case PreDynamics
  case PostDynamics
  case PreCollision
  case PostCollision
}
@available(OSX 10.10, *)
enum SCNParticleEvent : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Birth
  case Death
  case Collision
}
@available(OSX 10.10, *)
class SCNParticlePropertyController : NSObject, NSSecureCoding, NSCopying {
  convenience init(animation animation: CAAnimation)
  var animation: CAAnimation
  var inputMode: SCNParticleInputMode
  var inputScale: CGFloat
  var inputBias: CGFloat
  weak var inputOrigin: @sil_weak SCNNode?
  var inputProperty: String?
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(OSX 10.10, *)
class SCNParticleSystem : NSObject, NSCopying, NSSecureCoding, SCNAnimatable {
  convenience init?(named name: String, inDirectory directory: String?)
  var emissionDuration: CGFloat
  var emissionDurationVariation: CGFloat
  var idleDuration: CGFloat
  var idleDurationVariation: CGFloat
  var loops: Bool
  var birthRate: CGFloat
  var birthRateVariation: CGFloat
  var warmupDuration: CGFloat
  var emitterShape: SCNGeometry?
  var birthLocation: SCNParticleBirthLocation
  var birthDirection: SCNParticleBirthDirection
  var spreadingAngle: CGFloat
  var emittingDirection: SCNVector3
  var acceleration: SCNVector3
  var local: Bool
  var particleAngle: CGFloat
  var particleAngleVariation: CGFloat
  var particleVelocity: CGFloat
  var particleVelocityVariation: CGFloat
  var particleAngularVelocity: CGFloat
  var particleAngularVelocityVariation: CGFloat
  var particleLifeSpan: CGFloat
  var particleLifeSpanVariation: CGFloat
  var systemSpawnedOnDying: SCNParticleSystem?
  var systemSpawnedOnCollision: SCNParticleSystem?
  var systemSpawnedOnLiving: SCNParticleSystem?
  var particleImage: AnyObject?
  var imageSequenceColumnCount: Int
  var imageSequenceRowCount: Int
  var imageSequenceInitialFrame: CGFloat
  var imageSequenceInitialFrameVariation: CGFloat
  var imageSequenceFrameRate: CGFloat
  var imageSequenceFrameRateVariation: CGFloat
  var imageSequenceAnimationMode: SCNParticleImageSequenceAnimationMode
  var particleColor: NSColor
  var particleColorVariation: SCNVector4
  var particleSize: CGFloat
  var particleSizeVariation: CGFloat
  var blendMode: SCNParticleBlendMode
  var blackPassEnabled: Bool
  var orientationMode: SCNParticleOrientationMode
  var sortingMode: SCNParticleSortingMode
  var lightingEnabled: Bool
  var affectedByGravity: Bool
  var affectedByPhysicsFields: Bool
  var particleDiesOnCollision: Bool
  var colliderNodes: [SCNNode]?
  var particleMass: CGFloat
  var particleMassVariation: CGFloat
  var particleBounce: CGFloat
  var particleBounceVariation: CGFloat
  var particleFriction: CGFloat
  var particleFrictionVariation: CGFloat
  var particleCharge: CGFloat
  var particleChargeVariation: CGFloat
  var dampingFactor: CGFloat
  var speedFactor: CGFloat
  var stretchFactor: CGFloat
  var fresnelExponent: CGFloat
  var propertyControllers: [String : SCNParticlePropertyController]?
  func reset()
  func handleEvent(_ event: SCNParticleEvent, forProperties properties: [String], withBlock block: SCNParticleEventBlock)
  func addModifierForProperties(_ properties: [String], atStage stage: SCNParticleModifierStage, withBlock block: SCNParticleModifierBlock)
  func removeModifiersOfStage(_ stage: SCNParticleModifierStage)
  func removeAllModifiers()
  @available(OSX 10.10, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func addAnimation(_ animation: CAAnimation, forKey key: String?)
  @available(OSX 10.10, *)
  func removeAllAnimations()
  @available(OSX 10.10, *)
  func removeAnimationForKey(_ key: String)
  @available(OSX 10.10, *)
  var animationKeys: [String] { get }
  @available(OSX 10.10, *)
  func animationForKey(_ key: String) -> CAAnimation?
  @available(OSX 10.9, *)
  func pauseAnimationForKey(_ key: String)
  @available(OSX 10.9, *)
  func resumeAnimationForKey(_ key: String)
  @available(OSX 10.9, *)
  func isAnimationForKeyPaused(_ key: String) -> Bool
  @available(OSX 10.10, *)
  func removeAnimationForKey(_ key: String, fadeOutDuration duration: CGFloat)
}
extension SCNNode {
  @available(OSX 10.10, *)
  func addParticleSystem(_ system: SCNParticleSystem)
  @available(OSX 10.10, *)
  func removeAllParticleSystems()
  @available(OSX 10.10, *)
  func removeParticleSystem(_ system: SCNParticleSystem)
  @available(OSX 10.10, *)
  var particleSystems: [SCNParticleSystem]? { get }
}
extension SCNScene {
  @available(OSX 10.10, *)
  func addParticleSystem(_ system: SCNParticleSystem, withTransform transform: SCNMatrix4)
  @available(OSX 10.10, *)
  func removeAllParticleSystems()
  @available(OSX 10.10, *)
  func removeParticleSystem(_ system: SCNParticleSystem)
  @available(OSX 10.10, *)
  var particleSystems: [SCNParticleSystem]? { get }
}

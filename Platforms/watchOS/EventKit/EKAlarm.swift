
@available(watchOS 2.0, *)
class EKAlarm : EKObject, NSCopying {
  /*not inherited*/ init(absoluteDate date: NSDate)
  /*not inherited*/ init(relativeOffset offset: NSTimeInterval)
  var relativeOffset: NSTimeInterval
  @NSCopying var absoluteDate: NSDate?
  @NSCopying var structuredLocation: EKStructuredLocation?
  var proximity: EKAlarmProximity
  @available(watchOS 2.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}

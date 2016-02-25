
@available(watchOS 2.0, *)
class EKSource : EKObject {
  var sourceIdentifier: String { get }
  var sourceType: EKSourceType { get }
  var title: String { get }
  @available(watchOS, introduced=2.0, deprecated=2.0)
  var calendars: Set<EKCalendar> { get }
  @available(watchOS 2.0, *)
  func calendarsForEntityType(_ entityType: EKEntityType) -> Set<EKCalendar>
}

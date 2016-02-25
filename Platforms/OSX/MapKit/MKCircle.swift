
@available(OSX 10.9, *)
class MKCircle : MKShape, MKOverlay {
  convenience init(centerCoordinate coord: CLLocationCoordinate2D, radius radius: CLLocationDistance)
  convenience init(mapRect mapRect: MKMapRect)
  var radius: CLLocationDistance { get }
  var boundingMapRect: MKMapRect { get }
  @available(OSX 10.9, *)
  func intersectsMapRect(_ mapRect: MKMapRect) -> Bool
  @available(OSX 10.9, *)
  func canReplaceMapContent() -> Bool
}


@available(iOS 8.0, *)
protocol MTLDrawable : NSObjectProtocol {
  func present()
  func presentAtTime(_ presentationTime: CFTimeInterval)
}

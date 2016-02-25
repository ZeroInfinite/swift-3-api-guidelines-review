
@available(OSX 10.11, *)
protocol MTLDrawable : NSObjectProtocol {
  func present()
  func presentAtTime(_ presentationTime: CFTimeInterval)
}

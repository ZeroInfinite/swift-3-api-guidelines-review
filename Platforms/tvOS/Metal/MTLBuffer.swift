
@available(tvOS 8.0, *)
protocol MTLBuffer : MTLResource {
  var length: Int { get }
  func contents() -> UnsafeMutablePointer<Void>
  @available(tvOS 8.0, *)
  func newTextureWithDescriptor(_ descriptor: MTLTextureDescriptor, offset offset: Int, bytesPerRow bytesPerRow: Int) -> MTLTexture
}

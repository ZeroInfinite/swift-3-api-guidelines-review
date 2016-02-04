
protocol NSExtensionRequestHandling : NSObjectProtocol {
  @available(watchOS 2.0, *)
  func beginRequestWithExtensionContext(context: NSExtensionContext)
}
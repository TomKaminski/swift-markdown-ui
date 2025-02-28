public struct Subscript: InlineContentProtocol {
  public var _inlineContent: InlineContent {
    .init(inlines: [.subscript(self.text)])
  }

  private let text: String

  public init(_ text: String) {
    self.text = text
  }
}

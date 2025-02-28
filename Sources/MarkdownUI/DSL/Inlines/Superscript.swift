public struct Superscript: InlineContentProtocol {
  public var _inlineContent: InlineContent {
    .init(inlines: [.superscript(text)])
  }

  private let text: String

  public init(_ text: String) {
    self.text = text
  }
}

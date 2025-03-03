import MarkdownUI
import SwiftUI

struct TextStylesView: View {
  private let content = """
  Normal ==Highlight== Normal ^superscript^ Normal ~subscript~ Normal ~~strikethrough~~
  """

  var body: some View {
    DemoView {
      Markdown(self.content)

      Section("Customization Example") {
        Markdown(self.content)
      }
      .markdownTextStyle(\.code) {
        FontFamilyVariant(.monospaced)
        BackgroundColor(.yellow.opacity(0.5))
      }
      .markdownTextStyle(\.emphasis) {
        FontStyle(.italic)
        UnderlineStyle(.single)
      }
      .markdownTextStyle(\.strong) {
        FontWeight(.heavy)
      }
      .markdownTextStyle(\.strikethrough) {
        StrikethroughStyle(.init(pattern: .solid, color: .red))
      }
      .markdownTextStyle(\.link) {
        ForegroundColor(.mint)
        UnderlineStyle(.init(pattern: .dot))
      }
    }
  }
}

import SwiftUI

public struct BaselineOffset: TextStyle {
  private let offset: CGFloat

  public init(_ offset: CGFloat) {
    self.offset = offset
  }

  public func _collectAttributes(in attributes: inout AttributeContainer) {
    attributes.fontProperties?.baselineOffset = self.offset
  }
}

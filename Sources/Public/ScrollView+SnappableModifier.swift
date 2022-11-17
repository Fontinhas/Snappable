import SwiftUI

public extension ScrollView {
  /// Make the ScrollView snappable.
  /// - Parameters:
  ///   - alignment: Alignment that is used as a guide for snapping.
  ///   - mode: The mode by when ScrollView snaps the items.
  /// - Returns: A ScrollView, with the snapping behavior set.
  func snappable<ID>(
    alignment: SnapAlignment = .center,
    mode: SnapMode = .immediately,
    selectedSnapId: ((_ selected: ID) -> ())? = nil
  ) -> some View where ID: Hashable{
      self.modifier(SnappableModifier(alignment: alignment, mode: mode, selectedSnapId: selectedSnapId))
  }
}

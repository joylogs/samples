//
//  RefreshButton.swift
//  Earthquakes
//
//  Created by Joy Banerjee on 07/04/24.
//

import SwiftUI

struct RefreshButton: View {
    var action: () -> Void = {}
    var body: some View {
        Button(action: action) {
            Label("Refresh", systemImage: "arrow.clockwise")
        }
    }
}

struct RefreshButton_Previews: PreviewProvider {
    static var previews: some View {
        RefreshButton()
            .previewLayout(.sizeThatFits)
    }
}

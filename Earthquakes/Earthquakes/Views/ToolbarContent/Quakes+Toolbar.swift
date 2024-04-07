//
//  Quakes+Toolbar.swift
//  Earthquakes
//
//  Created by Joy Banerjee on 07/04/24.
//

import SwiftUI

extension Quakes {
    
    @ToolbarContentBuilder
    func toolbarContent() -> some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            if editMode == .active {
                SelectButton(mode: $selectMode) {
                    if selectMode.isActive {
                        selection = Set(quakes.map { $0.code })
                    } else {
                        selection = []
                    }
                }
            }
        }
        ToolbarItem(placement: .navigationBarTrailing) {
            EditButton(editMode: $editMode) {
                selection.removeAll()
                editMode = .inactive
                selectMode = .inactive
            }
        }
        ToolbarItem(placement: .bottomBar) {
            RefreshButton {
                Task {
                    fetchQuakes
                }
            }
            Spacer()
            ToolbarStatus(isLoading: isLoading,
                          lastUpdated: lastUpdated,
                          quakesCount: quakes.count
            )
            Spacer()
            if editMode == .active {
                DeleteButton {
                    deleteQuakes(for: selection)
                }
                .disabled(isLoading || selection.isEmpty)
            }
        }
    }
}

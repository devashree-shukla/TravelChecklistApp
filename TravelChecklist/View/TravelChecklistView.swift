//
//  TravelChecklist.swift
//  TravelChecklist
//
//  Created by devashree shukla on 25/03/24.
//

import Foundation
import SwiftUI
import SwiftData

struct TravelChecklistView: View {
    
    @Environment(\.modelContext) private var modelContext
    var travel: Travel
    
    var body: some View {
        let groupedDictionary = Dictionary(grouping: travel.checklistItems) { $0.category }
        let result = Dictionary(uniqueKeysWithValues: groupedDictionary.map {
            (ItemCategory(rawValue: String($0))!, $1)
        })
        
        NavigationStack {
            if travel.isCompleted {
                Text(travel.travelStatus).foregroundColor(travel.travelStatusColor)
            }
            List {
                ForEach(Array(result.keys.sorted()), id: \.self) { section in
                    Section(header: Text(section.rawValue)) {
                        ForEach(result[section] ?? []) { item in
                            TravelChecklistCellView(item: item)
                                .allowsHitTesting(!travel.isCompleted)
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItem {
                    Button(action: clearSelection) {
                        Label("Clear Selection", systemImage: "xmark")
                    }
                    .allowsHitTesting(!travel.isCompleted)
                }
                ToolbarItem {
                    Button(action: markTravelAsComplete) {
                        Label("Mark Travel as Complete", systemImage: "exclamationmark.octagon.fill")
                    }
                    .allowsHitTesting(!travel.isCompleted)
                }
            }
            .navigationTitle(Constants.NavigationTitles.checklists)
        }
    }
    
    private func clearSelection() {
        guard !travel.isCompleted else { return }
        travel.checklistItems.forEach { item in
            item.isPacked = false
        }
    }
    
    private func markTravelAsComplete() {
        guard !travel.isCompleted else { return }
        travel.isCompleted = true
    }
}


#Preview {
    TravelChecklistView(travel: Travel(name: "A travel", checklistItems: defaultChecklistItems))
        .modelContainer(for: ItemChecklist.self, inMemory: true)
}


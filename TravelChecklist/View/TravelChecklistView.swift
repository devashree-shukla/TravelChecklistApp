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
    
    var body: some View {
        let _ = saveItems()
        
        let groupedDictionary = Dictionary(grouping: defaultChecklistItems) { $0.category }
        let result = Dictionary(uniqueKeysWithValues: groupedDictionary.map {
            (ItemCategory(rawValue: String($0.rawValue))!, $1)
        })
        
        NavigationStack {
            List {
                ForEach(Array(result.keys.sorted()), id: \.self) { section in
                    Section(header: Text(section.rawValue)) {
                        ForEach(result[section] ?? []) { item in
                            TripChecklistCellView(item: item)
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItem {
                    Button(action: clearSelection) {
                        Label("Clear Selection", systemImage: "xmark")
                    }
                }
                ToolbarItem {
                    Button(action: markTripAsComplete) {
                        Label("Mark Travel as Complete", systemImage: "exclamationmark.octagon.fill")
                    }
                }
            }
            .navigationTitle(Constants.NavigationTitles.checklists)
        }
    }
    
    //TODO: Organize this code
    private func saveItems() {
        if isFirstLaunch() {
            for item in defaultChecklistItems {
                modelContext.insert(item)
            }
        }
    }
    
    func isFirstLaunch() -> Bool {
        let hasLaunched = UserDefaults.standard.bool(forKey: Constants.UserDefaultKeys.hasLaunched)
        if !hasLaunched {
            UserDefaults.standard.set(true, forKey: Constants.UserDefaultKeys.hasLaunched)
            UserDefaults.standard.synchronize()
        }
        return !hasLaunched
    }
    
    private func clearSelection() {
        //TODO:
    }
    
    private func markTripAsComplete() {
        //TODO:
    }
}


#Preview {
    TravelChecklistView()
        .modelContainer(for: ItemChecklist.self, inMemory: true)
}


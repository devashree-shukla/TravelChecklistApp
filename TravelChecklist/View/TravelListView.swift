//
//  ContentView.swift
//  TravelChecklist
//
//  Created by devashree shukla on 23/03/24.
//

import SwiftUI
import SwiftData

struct TravelListView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query(sort: [SortDescriptor(\Travel.createdAt, order: .reverse)]) var items: [Travel]
    @State private var isViewVisible = false
    @State private var isSorted = false
    
    var body: some View {
        NavigationStack {
            if isViewVisible {
                NewTravelView()
            }
            
            List {
                ForEach(items) { travel in
                    NavigationLink {
                        TravelChecklistView(travel: travel)
                    } label: {
                        TravelCellView(travel: travel)
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem {
                    if isViewVisible {
                        Button(action: addItem) {
                            Label("Close New Travel", systemImage: "xmark.app.fill")
                        }
                    } else {
                        Button(action: addItem) {
                            Label("Add New Travel", systemImage: "plus")
                        }
                    }
                }
            }
            .navigationTitle(Constants.NavigationTitles.travels)
        }
    }

    private func addItem() {
        withAnimation {
            isViewVisible.toggle()
        }
    }

    
    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
    
}


#Preview {
    TravelListView()
        .modelContainer(for: Travel.self, inMemory: true)
}

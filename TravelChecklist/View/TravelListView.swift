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
    @Query(sort: [SortDescriptor(\Travel.createdAt, order: .reverse)]) 
    var items: [Travel]
    @State private var isViewVisible = false
    
    var body: some View {
        NavigationSplitView {
            
            if isViewVisible {
                NewTripView()
            }
                        
            List {
                ForEach(items) { travel in
                    NavigationLink {
                        TravelChecklistView()
                    } label: {
                        TripCellView(travel: travel)
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
            .navigationTitle(Constants.NavigationTitles.trips)
        } detail: {
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

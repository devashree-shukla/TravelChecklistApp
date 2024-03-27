//
//  TravelChecklistApp.swift
//  TravelChecklist
//
//  Created by devashree shukla on 23/03/24.
//

import SwiftUI
import SwiftData

@main
struct TravelChecklistApp: App {
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            ItemChecklist.self,
            Travel.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    
    var body: some Scene {
        WindowGroup {
            TravelListView()
        }
        .modelContainer(sharedModelContainer)
    }
    
}

//TODO:
//manage data per travel
//Filter trips
//Filter checklist


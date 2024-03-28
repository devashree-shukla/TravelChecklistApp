//
//  TravelCellView.swift
//  TravelChecklist
//
//  Created by devashree shukla on 26/03/24.
//

import SwiftUI
import SwiftData

struct TravelCellView: View {
    
    var travel: Travel
    
    var body: some View {
        HStack {
            Text(travel.name)
            Spacer()
            Text(travel.travelStatus).foregroundColor(travel.travelStatusColor)
            DoneImage(isDone: travel.isCompleted)
        }
        .allowsHitTesting(false)
        .onTapGesture {
            travel.isCompleted.toggle()
        }
    }
    
}


#Preview {
    TravelCellView(travel: Travel(name: "Rishikesh", isCompleted: true, checklistItems: defaultChecklistItems))
        .modelContainer(for: Travel.self, inMemory: true)
}

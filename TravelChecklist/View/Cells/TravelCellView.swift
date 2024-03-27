//
//  TripCellView.swift
//  TravelChecklist
//
//  Created by devashree shukla on 26/03/24.
//

import SwiftUI
import SwiftData

struct TripCellView: View {
    
    var travel: Travel
    private var tripStatus: String {
        travel.isOngoing ? Constants.Texts.ongoingTrip : (travel.isCompleted ? Constants.Texts.completedTrip : Constants.Texts.upcomingTrip)
    }
    private var tripStatusColor: Color {
        travel.isOngoing ? .orange : (travel.isCompleted ? .green : .gray)
    }
    
    var body: some View {
        HStack {
            Text(travel.name)
            Spacer()
            Text(tripStatus).foregroundColor(tripStatusColor)
            DoneImage(isDone: travel.isCompleted)
        }
        .allowsHitTesting(false)
        .onTapGesture {
            travel.isCompleted.toggle()
        }
    }
    
}


#Preview {
    TripCellView(travel: Travel(name: "Rishikesh", isCompleted: true))
        .modelContainer(for: Travel.self, inMemory: true)
}

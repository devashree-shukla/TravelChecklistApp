//
//  TripCellView.swift
//  TravelChecklist
//
//  Created by devashree shukla on 26/03/24.
//

import SwiftUI
import SwiftData

struct TripCellView: View {
    
    var trip: Trip
    private var tripStatus: String {
        trip.isOngoing ? Constants.Texts.ongoingTrip : (trip.isCompleted ? Constants.Texts.completedTrip : Constants.Texts.upcomingTrip)
    }
    private var tripStatusColor: Color {
        trip.isOngoing ? .orange : (trip.isCompleted ? .green : .gray)
    }
    
    var body: some View {
        HStack {
            Text(trip.name)
            Spacer()
            Text(tripStatus).foregroundColor(tripStatusColor)
            DoneImage(isDone: trip.isCompleted)
        }
        .allowsHitTesting(false)
        .onTapGesture {
            trip.isCompleted.toggle()
        }
    }
    
}


#Preview {
    TripCellView(trip: Trip(name: "Rishikesh", isCompleted: true))
        .modelContainer(for: Trip.self, inMemory: true)
}

//
//  NewTripView.swift
//  TravelChecklist
//
//  Created by devashree shukla on 26/03/24.
//

import SwiftUI

struct NewTripView: View {
    
    @Environment(\.modelContext) private var modelContext
    @State var newTripName: String = Constants.Texts.blankText
    
    var body: some View {
        VStack {
            TextField(Constants.Texts.createNewTripTitle, text: $newTripName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.top,20)
            Button {
                if !newTripName.isEmpty {
                    let dateFormatter = DateFormatter()
                    dateFormatter.dateFormat = Constants.Texts.dateFormmatter
                    let dateString = dateFormatter.string(from: Date())
                    let newTrip = Trip(name: newTripName, isCompleted: false, createdAt: dateString)
                    modelContext.insert(newTrip)
                }
                newTripName = Constants.Texts.blankText
            } label: {
                Text(Constants.ButtonTitles.createNewTrip)
            }
        }
    }
    
}

#Preview {
    NewTripView()
}

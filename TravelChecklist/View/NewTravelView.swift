//
//  NewTravelView.swift
//  TravelChecklist
//
//  Created by devashree shukla on 26/03/24.
//

import SwiftUI

struct NewTravelView: View {
    
    @Environment(\.modelContext) private var modelContext
    @State var newTravelName: String = Constants.Texts.blankText
    
    var body: some View {
        VStack {
            TextField(Constants.Texts.createNewTravelTitle, text: $newTravelName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.top,20)
            Button {
                if !newTravelName.isEmpty {
                    let dateFormatter = DateFormatter()
                    dateFormatter.dateFormat = Constants.Texts.dateFormmatter
                    let dateString = dateFormatter.string(from: Date())
                    
//                    let items = [ItemChecklist(name: "Tooth paste", category: ItemCategory.OralCare.rawValue, isPacked: false),
//                                 ItemChecklist(name: "Tooth brush", category: ItemCategory.OralCare.rawValue, isPacked: false)]
                    let newTravel = Travel(name: newTravelName, isCompleted: false, createdAt: dateString, checklistItems: defaultChecklistItems)
                    do {
                        try modelContext.insert(newTravel)
                    } catch {
                        // Handle any errors
                    }
                }
                newTravelName = Constants.Texts.blankText
            } label: {
                Text(Constants.ButtonTitles.createNewTravel)
            }
        }
    }
    
}

#Preview {
    NewTravelView()
}

//
//  TripChecklistCellView.swift
//  TravelChecklist
//
//  Created by devashree shukla on 26/03/24.
//

import SwiftUI
import SwiftData

struct TripChecklistCellView: View {
    
    var item: ItemChecklist
    
    var body: some View {
        HStack {
            Text(item.name)

            Spacer()

            CheckImage(isChecked: item.isPacked)
        }
        .onTapGesture {
            item.isPacked.toggle()
        }
    }
    
}


#Preview {
    TripChecklistCellView(item: ItemChecklist(name: "Brush", isPacked: false))
        .modelContainer(for: Travel.self, inMemory: true)
}

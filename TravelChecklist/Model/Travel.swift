//
//  Travel.swift
//  TravelChecklist
//
//  Created by devashree shukla on 25/03/24.
//

import Foundation
import SwiftData
import SwiftUI

@Model
final class Travel: Identifiable {
   
    @Attribute var id: UUID
    @Attribute var name: String
    @Attribute var isCompleted: Bool
    @Attribute var isOngoing: Bool
    @Attribute var createdAt: String
    @Relationship var checklistItems: [ItemChecklist]
    
    init(id: UUID = UUID(), 
         name: String = "",
         isCompleted: Bool = false,
         isOngoing: Bool = false,
         createdAt: String = "",
         checklistItems: [ItemChecklist]
    ) {
        self.id = id
        self.name = name
        self.isCompleted = isCompleted
        self.isOngoing = isOngoing
        self.createdAt = createdAt
        self.checklistItems = checklistItems
    }
    
    var travelStatus: String {
        isOngoing ? Constants.Texts.ongoingTravel : (isCompleted ? Constants.Texts.completedTravel : Constants.Texts.upcomingTravel)
    }
    
    var travelStatusColor: Color {
        isOngoing ? .orange : (isCompleted ? .green : .gray)
    }
}

//
//  Travel.swift
//  TravelChecklist
//
//  Created by devashree shukla on 25/03/24.
//

import Foundation
import SwiftData

@Model
final class Travel: Identifiable {
   
    var id: UUID
    var name: String
    var isCompleted: Bool
    var isOngoing: Bool
    var createdAt: String
    
    init(id: UUID = UUID(), 
         name: String = "",
         isCompleted: Bool = false,
         isOngoing: Bool = false,
         createdAt: String = "") {
        self.id = id
        self.name = name
        self.isCompleted = isCompleted
        self.isOngoing = isOngoing
        self.createdAt = createdAt
    }
    
}

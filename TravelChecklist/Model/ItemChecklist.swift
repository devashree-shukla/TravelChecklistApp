//
//  Item.swift
//  TravelChecklist
//
//  Created by devashree shukla on 23/03/24.
//

import Foundation
import SwiftData

@Model
final class ItemChecklist {
    var id: UUID
    var name: String
    var category: ItemCategory
    var isPacked: Bool
    
    init(id: UUID = UUID(), 
         name: String = "",
         category: ItemCategory = .Extra,
         isPacked: Bool = false) {
        self.id = id
        self.name = name
        self.category = category
        self.isPacked = isPacked
    }
}

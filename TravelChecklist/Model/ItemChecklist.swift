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
    @Attribute var id: UUID
    @Attribute var name: String
    @Attribute var category: String
    @Attribute var isPacked: Bool
    
    var relationshipTypeEnum: ItemCategory? {
            get { ItemCategory(rawValue: category) }
            set { category = newValue?.rawValue ?? "" }
        }
    
    init(id: UUID = UUID(),
         name: String = "",
         category: String = ItemCategory.Extra.rawValue,
         isPacked: Bool = false) {
        self.id = id
        self.name = name
        self.category = category
        self.isPacked = isPacked
    }
}

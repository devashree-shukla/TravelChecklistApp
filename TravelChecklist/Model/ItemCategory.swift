//
//  ItemCategory.swift
//  TravelChecklist
//
//  Created by devashree shukla on 25/03/24.
//

import Foundation

enum ItemCategory: String, CaseIterable, Codable, Comparable {
    static func < (lhs: ItemCategory, rhs: ItemCategory) -> Bool {
        lhs.rawValue < rhs.rawValue
    }
    
    case OralCare
    case HairCare
    case BodyCare
    case FaceCare
    case Clothing
    case Essential
    case Electronics
    case Footwear
    case Health
    case Food
    case Extra
}

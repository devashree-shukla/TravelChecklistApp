//
//  CheckImage.swift
//  TravelChecklist
//
//  Created by devashree shukla on 26/03/24.
//

import SwiftUI

struct CheckImage: View {
    var isChecked: Bool = false
    
    var body: some View {
        if isChecked {
            Image(systemName: "checkmark.diamond.fill")
        } else {
            Image(systemName: "checkmark.diamond")
        }
    }
}

#Preview {
    CheckImage()
}

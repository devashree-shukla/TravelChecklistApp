//
//  DoneImage.swift
//  TravelChecklist
//
//  Created by devashree shukla on 26/03/24.
//

import SwiftUI

struct DoneImage: View {
    
    var isDone: Bool = false
    
    var body: some View {
        Image(systemName: isDone ? "circle.fill" : "circle")
    }
}

#Preview {
    DoneImage()
}


//
//  TabButton.swift
//  CinemaTicketsApp
//
//  Created by Dmitry Volkov on 31/08/2025.
//

import SwiftUI

struct TabButton: View {
    let tab: Tab
    let isSelected: Bool
    let circleYOffset: CGFloat
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(tab.rawValue)
                .renderingMode(.template)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .offset(y: isSelected ? circleYOffset : 0)
        }
    }
}

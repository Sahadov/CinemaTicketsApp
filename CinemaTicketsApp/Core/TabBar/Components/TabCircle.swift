//
//  TabCircle.swift
//  CinemaTicketsApp
//
//  Created by Dmitry Volkov on 31/08/2025.
//

import SwiftUI

struct TabCircle: View {
    let width: CGFloat
    let index: Int
    let circleSize: CGFloat
    let yOffset: CGFloat
    let gradientColors: [Color]
    
    var body: some View {
        let buttonWidth = width / CGFloat(Tab.allCases.count)
        let xOffset = CGFloat(index) * buttonWidth
        
        Circle()
            .fill(.ultraThinMaterial)
            .frame(width: circleSize, height: circleSize)
            .shadow(color: .black.opacity(0.25), radius: 20, x: 0, y: 10)
            .offset(x: xOffset, y: yOffset)
            .overlay(
                Circle()
                    .trim(from: 0, to: 0.5)
                    .stroke(
                        LinearGradient(colors: gradientColors, startPoint: .top, endPoint: .bottom),
                        style: StrokeStyle(lineWidth: 2)
                    )
                    .rotationEffect(.degrees(135))
                    .frame(width: circleSize - 2, height: circleSize - 2)
                    .offset(x: xOffset, y: yOffset)
            )
    }
}

//
//  TabBarStyle.swift
//  CinemaTicketsApp
//
//  Created by Dmitry Volkov on 31/08/2025.
//

import SwiftUI

struct TabBarStyle {
    let backgroundColors: [Color]
    let gradientCircle: [Color]
    let circleSize: CGFloat
    let circleYOffset: CGFloat
    
    static let `default` = TabBarStyle(
        backgroundColors: [Color("purple"), Color("lightBlue"), Color("pink")],
        gradientCircle: [Color("cyan"), Color("cyan").opacity(0.1), Color("cyan")],
        circleSize: 80,
        circleYOffset: -17
    )
}

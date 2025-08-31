//
//  TabBar.swift
//  CinemaTicketsApp
//
//  Created by Dmitry Volkov on 31/08/2025.
//

import SwiftUI

struct TabBar: View {
    @Binding var currentTab: Tab
    let style: TabBarStyle
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            
            HStack(spacing: 0) {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    TabButton(
                        tab: tab,
                        isSelected: currentTab == tab,
                        circleYOffset: style.circleYOffset
                    ) {
                        withAnimation(.easeOut) {
                            currentTab = tab
                        }
                    }
                }
            }
            .background(alignment: .leading) {
                TabCircle(
                    width: width,
                    index: getIndex(),
                    circleSize: style.circleSize,
                    yOffset: style.circleYOffset,
                    gradientColors: style.gradientCircle
                )
            }
        }
        .frame(height: 24)
        .padding(.top, 30)
        .background(.ultraThinMaterial)
        .background(
            LinearGradient(colors: style.backgroundColors, startPoint: .leading, endPoint: .trailing)
        )
    }
    
    private func getIndex() -> Int {
        Tab.allCases.firstIndex(of: currentTab) ?? 0
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  CinemaTicketsApp
//
//  Created by Dmitry Volkov on 31/08/2025.
//
import SwiftUI

struct ContentView: View {
    @State var currentTab: Tab = .home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                TabView(selection: $currentTab) {
                    HomeView().tag(Tab.home)
                    Text("Location")
                        .tag(Tab.location)
                    TicketView()
                        .tag(Tab.ticket)
                    Text("Category")
                        .tag(Tab.category)
                    Text("Profile")
                        .tag(Tab.profile)
                }
                
                TabBar(currentTab: $currentTab, style: .default)
            }
            .ignoresSafeArea(.keyboard)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

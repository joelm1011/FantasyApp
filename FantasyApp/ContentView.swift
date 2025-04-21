//
//  ContentView.swift
//  FantasyApp
//
//  Created by Joel Martinez on 4/21/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            LineupView()
                .tabItem {
                    Label("Lineup", systemImage: "person.3.fill")
                }

            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
        }
    }
}

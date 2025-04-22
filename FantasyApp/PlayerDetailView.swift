//
//  PlayerDetailView.swift
//  FantasyApp
//
//  Created by Joel Martinez on 4/21/25.
//

import SwiftUI

struct PlayerDetailView: View {
    @State var player: Player

    var body: some View {
        VStack(spacing: 24) {
            Text(player.name)
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("\(player.position) — \(player.team)")
                .font(.title2)
                .foregroundColor(.gray)

            VStack(spacing: 8) {
                HStack {
                    Text("Fantasy Points:")
                    Spacer()
                    Text(String(format: "%.1f", player.points))
                }

                HStack {
                    Text("Games Played:")
                    Spacer()
                    Text("\(player.gamesPlayed)")
                }
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(10)

            Toggle("Starter", isOn: $player.isStarter)
                .padding(.horizontal)
            
            Text(player.isStarter ? "✅ In your starting lineup" : "🛋️ Benched")
                .foregroundColor(player.isStarter ? .green : .red)
                .font(.subheadline)

            Spacer()
        }
        .padding()
        .navigationTitle("Player Info")
    }
}

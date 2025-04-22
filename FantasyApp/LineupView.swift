//
//  LineupView.swift
//  FantasyApp
//
//  Created by Joel Martinez on 4/21/25.
//

import SwiftUI

struct LineupView: View {
    let players = [
        Player(name: "Travis Kelce", position: "TE", team: "KC Chiefs", points: 212.5, gamesPlayed: 17),
        Player(name: "Tyreek Hill", position: "WR", team: "Miami Dolphins", points: 275.3, gamesPlayed: 16),
        Player(name: "Jalen Hurts", position: "QB", team: "Eagles", points: 301.2, gamesPlayed: 17)
    ]

    var body: some View {
        NavigationView {
            List(players) { player in
                NavigationLink(destination: PlayerDetailView(player: player)) {
                    VStack(alignment: .leading) {
                        Text(player.name)
                            .font(.headline)
                        Text("\(player.position), \(player.team)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("My Lineup")
        }
    }
}


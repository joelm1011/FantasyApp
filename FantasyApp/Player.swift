//
//  Player.swift
//  FantasyApp
//
//  Created by Joel Martinez on 4/21/25.
//

import Foundation

struct Player: Identifiable {
    let id = UUID()
    let name: String
    let position: String
    let team: String
    let points: Double
    let gamesPlayed: Int
    var isStarter: Bool = true // default to "started"
}

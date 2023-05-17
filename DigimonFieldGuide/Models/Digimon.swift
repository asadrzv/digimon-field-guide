//
//  Digimon.swift
//  DigimonFieldGuide
//
//  Created by Asad Rizvi on 5/16/23.
//

import Foundation

struct Digimon: Codable, Identifiable {
    let id = UUID()
    let name: String
    let imageUrl: String
    let level: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case imageUrl = "img"
        case level
    }
}

enum Level: String, Codable {
    case armor = "Armor"
    case champion = "Champion"
    case fresh = "Fresh"
    case inTraining = "In Training"
    case mega = "Mega"
    case rookie = "Rookie"
    case training = "Training"
    case ultimate = "Ultimate"
}

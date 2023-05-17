//
//  Constants.swift
//  DigimonFieldGuide
//
//  Created by Asad Rizvi on 5/16/23.
//

import Foundation

struct Constants {
    // Base URL to get list of Digimon JSON data
    static let baseUrl = "https://digimon-api.vercel.app/api/digimon"
    
    // Sample Digimon name
    static let sampleName = "Agumon"
    
    // Sample Digimon image URL
    static let sampleImageUrl = "https://digimon.shadowsmith.com/img/agumon.jpg"
    
    // Sample Digimon
    static let sampleDigimon = Digimon(
        name: sampleName,
        imageUrl: sampleImageUrl,
        level: "Rookie"
    )
}

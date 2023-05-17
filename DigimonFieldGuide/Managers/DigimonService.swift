//
//  DigimonService.swift
//  DigimonFieldGuide
//
//  Created by Asad Rizvi on 5/16/23.
//

import Foundation

// Use protocal-driven development and dependency injection to allow testing
protocol DigimonService {
    
    // Get list of all Digimon
    func getAllDigimon(_ completion: @escaping(Result<[Digimon], Error>) -> Void)
}

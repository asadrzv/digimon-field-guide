//
//  MockDigimonManager.swift
//  DigimonFieldGuide
//
//  Created by Asad Rizvi on 5/16/23.
//

import Foundation

struct MockDigimonManager: DigimonService {
    
    // Get list of all Digimon
    func getAllDigimon(_ completion: @escaping (Result<[Digimon], Error>) -> Void) {
        let testData = [
            Constants.sampleDigimon,
            Constants.sampleDigimon,
            Constants.sampleDigimon
        ]
        completion(.success(testData))
    }
}

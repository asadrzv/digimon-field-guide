//
//  DigimonManager.swift
//  DigimonFieldGuide
//
//  Created by Asad Rizvi on 5/16/23.
//

import Foundation

struct DigimonManager: DigimonService {
    
    // Return list of all Digimon or an error
    func getAllDigimon(_ completion: @escaping (Result<[Digimon], Error>) -> Void) {
        Bundle.main.fetch(url: Constants.baseUrl, model: [Digimon].self) { result in
            switch result {
            case .success(let digimonList):
                print("SUCCESS: Successfully fetched all Digimon")
                completion(.success(digimonList))
                
            case .failure(let error):
                print("ERROR: \(error.localizedDescription)")
                completion(.failure(error))
            }
        }
    }
}

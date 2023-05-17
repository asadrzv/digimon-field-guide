//
//  DigimonViewModel.swift
//  DigimonFieldGuide
//
//  Created by Asad Rizvi on 5/16/23.
//

import Foundation

class DigimonViewModel: ObservableObject {
    private let digimonManager: DigimonService
    
    @Published var digimonList = [Digimon]()
    @Published var searchText = ""
    
    init(digimonManager: DigimonService) {
        self.digimonManager = digimonManager
    }
    
    // Filtered list of Digimons according to search text found in Digimon names
    var filteredDigimonList: [Digimon] {
        if searchText.isEmpty {
            return self.digimonList
        } else {
            return self.digimonList.filter {
                $0.name.lowercased().contains(searchText.lowercased())
            }
        }
    }
    
    // Get list of all Digimon
    func getAllDigimon() {
        digimonManager.getAllDigimon { result in
            switch result {
            case .success(let digimonList):
                DispatchQueue.main.async {
                    self.digimonList = digimonList
                }
            case .failure(let error):
                print("ERROR: \(error.localizedDescription)")
            }
        }
    }
}

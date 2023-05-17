//
//  DigimonListView.swift
//  DigimonFieldGuide
//
//  Created by Asad Rizvi on 5/16/23.
//

import SwiftUI

struct DigimonListView: View {
    @ObservedObject var digimonViewModel = DigimonViewModel(digimonManager: DigimonManager())
    
    var body: some View {
        NavigationStack {
            // List of all Digimon cells (name/image) that link to details when tapped
            List(digimonViewModel.filteredDigimonList) { digimon in
                NavigationLink(destination: DigimonDetailsView(digimon: digimon)) {
                    DigimonCellView(digimon: digimon)
                }
            }
            // Get all Digimon and store in view model
            .onAppear {
                digimonViewModel.getAllDigimon()
            }
            // Search bar for user to filter Digimon by name
            .searchable(text: $digimonViewModel.searchText)
            // Animation for searching so Digimon don't simply disapear
            .animation(.easeInOut(duration: 0.3), value: digimonViewModel.filteredDigimonList.count)
            .navigationTitle("Digimon Field Guide")
        }
    }
}

struct DigimonListView_Previews: PreviewProvider {
    static var previews: some View {
        DigimonListView()
    }
}

//
//  DigimonCellView.swift
//  DigimonFieldGuide
//
//  Created by Asad Rizvi on 5/16/23.
//

import SwiftUI

struct DigimonCellView: View {
    let digimon: Digimon
    
    var body: some View {
        HStack {
            // Digimon name
            Text(digimon.name)
            
            Spacer()
            
            // Digimon image
            ImageView(imageUrl: digimon.imageUrl, dimensions: 100)
        }
    }
}

struct DigimonCellView_Previews: PreviewProvider {
    static var previews: some View {
        DigimonCellView(digimon: Constants.sampleDigimon)
    }
}

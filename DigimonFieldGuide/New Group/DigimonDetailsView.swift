//
//  DigimonDetailsView.swift
//  DigimonFieldGuide
//
//  Created by Asad Rizvi on 5/16/23.
//

import SwiftUI

struct DigimonDetailsView: View {
    let digimon: Digimon
    
    var body: some View {
        ScrollView {
            ImageView(imageUrl: digimon.imageUrl, dimensions: 300)
            
            VStack(spacing: 20) {
                Text(digimon.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text(digimon.level)
                    .font(.headline)
                    .fontWeight(.semibold)
            }
        }
    }
}

struct DigimonDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DigimonDetailsView(digimon: Constants.sampleDigimon)
    }
}

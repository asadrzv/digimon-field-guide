//
//  DigimonModelTests.swift
//  DigimonFieldGuideTests
//
//  Created by Asad Rizvi on 5/16/23.
//

import XCTest
@testable import DigimonFieldGuide

final class DigimonModelTests: XCTestCase {
    
    // Test initial Digimon model values
    func testInitialValues() {
        let digimon = Digimon(
            name: "Agumon",
            imageUrl: "https://digimon.shadowsmith.com/img/agumon.jpg",
            level: "Rookie"
        )
        
        // Assert correct Digimon field values
        XCTAssert(digimon.name == "Agumon")
        XCTAssert(digimon.imageUrl == "https://digimon.shadowsmith.com/img/agumon.jpg")
        XCTAssert(digimon.level == "Rookie")
    }
}

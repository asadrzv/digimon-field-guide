//
//  DigimonViewModelTests.swift
//  DigimonFieldGuideTests
//
//  Created by Asad Rizvi on 5/16/23.
//

import XCTest
@testable import DigimonFieldGuide

final class DigimonViewModelTests: XCTestCase {
    // Use protocal-driven development and dependency injection to allow ViewModel testing w/o API calls
    let mockDigimonViewModel = DigimonViewModel(digimonManager: MockDigimonManager())
    
    // Test DigimonViewModel initial state
    func testInitialValues() {
        // Assert no digimon stored yet
        XCTAssert(mockDigimonViewModel.digimonList.count == 0)
    }
    
    func testGetAllDigimon() {
        // Simulate user loading app for first time
        mockDigimonViewModel.getAllDigimon()
        
        let asyncExpectation = expectation(description: "Async getAllDigmon block executed.")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            asyncExpectation.fulfill()
            
            // Assert all digimon added
            XCTAssert(self.mockDigimonViewModel.digimonList.count == 3)
        }
        waitForExpectations(timeout: 1)
    }
}

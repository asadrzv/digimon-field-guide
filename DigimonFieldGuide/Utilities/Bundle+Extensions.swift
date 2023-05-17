//
//  Bundle+Extensions.swift
//  DigimonFieldGuide
//
//  Created by Asad Rizvi on 5/16/23.
//

import Foundation

// Extension providing generic functions to fetch and decode JSON data
extension Bundle {
    
    // Decode data from a static JSON file
    func decode<T: Decodable>(file: String) -> T {
        // Throws an error if file not found
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Error: Could not find \(file) in bundle!")
        }
        
        // Throws an error if file could not be loaded
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Error: Could not load \(file) from bundle!")
        }
        
        let decoder = JSONDecoder()
        // Throws an error if file could not be decoded
        guard let jsonData = try? decoder.decode(T.self, from: data) else {
            fatalError("Error: Could not decode \(file) from bundle!")
        }
        
        return jsonData
    }
    
    // Fetch and decode JSON data from API
    func fetch<T: Decodable>(url: String, model: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        guard let url = URL(string: url) else {
            return
        }
        
        // Get data from live server
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                // Return any errors that occur
                if let error = error {
                    completion(.failure(error))
                }
                return
            }
            // Decode JSON data from server data
            do {
                let jsonData = try JSONDecoder().decode(T.self, from: data)
                completion(.success(jsonData))
            } catch {
                // Return any errors that occur
                completion(.failure(error))
            }
        }.resume()
    }
}

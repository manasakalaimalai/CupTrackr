//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Manasa Kalaimalai on 15/06/21.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1: Locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) from bundle")
        }
        
        // 2: Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        // 3: Decode the JSON file
        let decoder = JSONDecoder()
        
        // 4: Create property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        // 5: Return the ready-to use data
        return loaded
    }
}

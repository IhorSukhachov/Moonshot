//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Ihor Sukhachov on 21.11.2025.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [String: Astronaut] {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in the bundle")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load the file \(file) from bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode([String: Astronaut].self, from: data) else {
            fatalError("Failed to decode Astronaut data from \(file)")
        }
        return loaded
    }
}

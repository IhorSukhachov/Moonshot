//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Ihor Sukhachov on 21.11.2025.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in the bundle")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load the file \(file) from bundle")
        }
        
        let decoder = JSONDecoder()
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)
        //        guard let loaded = try? decoder.decode([String: Astronaut].self, from: data) else {
        //            fatalError("Failed to decode Astronaut data from \(file)")
        //        }
        //        return loaded
        do {
            return try decoder.decode(T.self, from: data)
        } catch DecodingError.keyNotFound(let key, let context) {
            fatalError("Failed to decode \(file) from bundle due to a missing key '\(key.stringValue)' - \(context.debugDescription) ")
        } catch DecodingError.typeMismatch(_, let context) {
            fatalError("Failed to decode \(file) from bundle due to type mismatch - \(context.debugDescription)")
        } catch DecodingError.valueNotFound(let value, let context) {
            fatalError("Failed to decode \(file) from bundle due to a missing value for \(value) - \(context.debugDescription) ")
        } catch DecodingError.dataCorrupted(let context) {
            fatalError("Failed to decode \(file) from bundle due to data corruption - \(context.debugDescription)")
        } catch {
            fatalError("Failed to decode \(file) from bundle: \(error.localizedDescription)")
        }
         
        
    }
}

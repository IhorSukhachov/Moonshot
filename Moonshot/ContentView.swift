//
//  ContentView.swift
//  Moonshot
//
//  Created by Ihor Sukhachov on 20.11.2025.
//

import SwiftUI

struct User: Codable {
    let name: String
    let adress: Address
}

struct Address: Codable {
    let street: String
    let city: String
}

struct ContentView: View {
    var body: some View {
        Button("DEcode JSON") {
            let input = """
                {
                    "name" : "Taylor Swift",
                    "adress" : {
                            "street" : "555 Zero Street",
                            "city" : "Nashville"
                                }
                }
                """
            
        }
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  Moonshot
//
//  Created by Ihor Sukhachov on 20.11.2025.
//

import SwiftUI

//struct User: Codable {
//    let name: String
//    let adress: Address
//}
//
//struct Address: Codable {
//    let street: String
//    let city: String
//}

struct ContentView: View {
let layout = [
    GridItem(.fixed(80)),
    GridItem(.fixed(80)),
    GridItem(.fixed(80))
]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(0..<1000) {
                    Text("item \($0)")
                }
            }
        }
        
        
        
        
        
        //        Button("DEcode JSON") {
//            let input = """
//                {
//                    "name" : "Taylor Swift",
//                    "adress" : {
//                            "street" : "555 Zero Street",
//                            "city" : "Nashville"
//                                }
//                }
//                """
//            let data = Data(input.utf8)
//            let decoder = JSONDecoder()
//            
//            if let user = try? decoder.decode(User.self, from: data) {
//                print(user.adress.street)
//            }
//        }
    }
}

#Preview {
    ContentView()
}

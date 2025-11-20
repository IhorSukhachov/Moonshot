//
//  ContentView.swift
//  Moonshot
//
//  Created by Ihor Sukhachov on 20.11.2025.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationStack {
//            NavigationLink {
//                Text("Detailed view")
//            }
//            label: {
//                VStack {
//                    Text("This is a label")
//                    Text("This is also a lable")
//                    Image(systemName: "star")
//                        
//                }.font(.largeTitle)
//            }
//
            List(0..<100) {row in
                NavigationLink("Row \(row)") {
                    Text("Detail \(row)")
                }
            } .navigationTitle("Moonshot")
        }
    }
}

#Preview {
    ContentView()
}

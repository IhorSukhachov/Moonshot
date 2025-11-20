//
//  ContentView.swift
//  Moonshot
//
//  Created by Ihor Sukhachov on 20.11.2025.
//

import SwiftUI

struct CustomText: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
    
    init(text: String) {
        print("Creatin a new custom text")
        self.text = text
    }
}

struct ContentView: View {
    var body: some View {
//        VStack {
//            Image(.example)
//                .resizable()
//                .scaledToFit()
////                .scaledToFill()
////                .frame(width: 300, height: 500)
//                .containerRelativeFrame(.horizontal) { size, axis in
//                    size * 0.8
//                }
//                
//                
//               
//        }
        ScrollView {
            VStack(spacing: 10) {
                ForEach(0..<100) {
                    Text("Item \($0)").font(.title)
                }
            }.frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    ContentView()
}

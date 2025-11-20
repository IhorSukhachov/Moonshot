//
//  ContentView.swift
//  Moonshot
//
//  Created by Ihor Sukhachov on 20.11.2025.
//

import SwiftUI

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
            }
        }
    }
}

#Preview {
    ContentView()
}

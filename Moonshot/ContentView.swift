//
//  ContentView.swift
//  Moonshot
//
//  Created by Ihor Sukhachov on 20.11.2025.
//
// testing after rebooting
import SwiftUI

struct MissionList: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        ForEach(missions) { mission in
            NavigationLink {
                MissionView(mission: mission, astronauts: astronauts)
            } label: {
                VStack {
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding()
                    Text(mission.displayName)
                        .font(.headline)
                        .foregroundStyle(.white)
                    Text(mission.formattedLaunchDate)
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                .padding(.vertical)
                .frame(maxWidth: .infinity)
                .background(.lightBackground)
            }
            .clipShape(.rect(cornerRadius: 10))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.lightBackground)
            )
        }
    }
    
}

struct GridView: View {
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                MissionList()
            }.padding([.horizontal, .bottom])
        }
    }
}
struct ListView: View {
    var body: some View {
        List {
            MissionList()
            
        }
    }
}

struct ContentView: View {
    @State private var isShowingGrid: Bool = false
    
    
    
    var body: some View {
        NavigationStack {
            Group {
                if isShowingGrid {
                    GridView()
                }
                else {
                    ListView()
                }
                
            }.navigationTitle("Moonshot")
                .background(.darkBackground)
                .preferredColorScheme(.dark)
                .toolbar {
                    Button("Swicth View") {
                        isShowingGrid.toggle()
                    }
                }
            
            
        }
        
    }
}



#Preview {
    ContentView()
}

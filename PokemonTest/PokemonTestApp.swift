//
//  PokemonTestApp.swift
//  PokemonTest
//
//  Created by Manki Kwon on 2023-05-24.
//

import SwiftUI

@main
struct PokemonTestApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    PokemonListView()
                }
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
                
                NavigationView {
                    PokemonVGridView()
                        .navigationTitle("VGrid")
                        .navigationBarTitleDisplayMode(.inline)
                }
                .tabItem {
                    VStack {
                        Image(systemName: "circle.grid.3x3")
                        Text("VGrid")
                    }
                }
                
                LazyTestView()
                .tabItem {
                    VStack {
                        Image(systemName: "circle.grid.3x3")
                        Text("Lazy")
                    }
                }
            }
        }
    }
}

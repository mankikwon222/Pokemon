//
//  PokemonVGridView.swift
//  PokemonTest
//
//  Created by Manki Kwon on 2023-05-25.
//

import SwiftUI

struct PokemonVGridView: View {
    
    var columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            Image("pokedex")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 8) {
                    ForEach(Pokemon.pokemons) { pokemon in
                        NavigationLink {
                            PokemonDetailsView(pokemon: pokemon)
                        } label: {
                            VStack {
                                Spacer()
                                Image(pokemon.iconName)
                                    .resizable()
                                    .frame(width: 64, height: 64)
                                    .clipped()
                                HStack {
                                    Spacer()
                                    Text("#\(pokemon.id)")
                                    Spacer()
                                }
                                Text(pokemon.name)
                                Spacer()
                            }
                            .background(pokemon.mainType.color.opacity(0.4))
                        }
                    }
                }
                .padding(.horizontal, 8)
            }
        }
    }
}

struct PokemonVGridView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PokemonVGridView()
        }
    }
}

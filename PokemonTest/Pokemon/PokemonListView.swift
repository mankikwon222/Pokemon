//
//  PokemonListView.swift
//  Pokemon
//
//  Created by Manki Kwon on 2023-05-24.
//

import SwiftUI

struct PokemonListView: View {
    var body: some View {
        VStack {
            Image("pokedex")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            List(Pokemon.pokemons) { pokemon in
                NavigationLink {
                    PokemonDetailsView(pokemon: pokemon)
                } label: {
                    Text("#\(pokemon.id)")
                        .padding(8)
                    Image(pokemon.iconName)
                        .resizable()
                        .frame(width: 32, height: 32)
                        .clipped()
                    Text(pokemon.name)
                }
                .listRowBackground(pokemon.mainType.color.opacity(0.4))
            }
        }
    }
    struct PokemonListView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                PokemonListView()
            }
        }
    }
}


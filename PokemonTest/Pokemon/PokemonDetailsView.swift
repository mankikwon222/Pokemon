//
//  PokemonDetailsView.swift
//  Pokemon
//
//  Created by Manki Kwon on 2023-05-24.
//

import SwiftUI

struct PokemonDetailsView: View {
    var pokemon: Pokemon
    
    var body: some View {
        VStack {
            headerSection
            
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                    Text("Information")
                        .font(.system(size: 32))
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                .background(Color.blue.opacity(0.4))
                .cornerRadius(10)
                .padding(15)
                
                
                makeDetailsRow(title: "Height:",value: "\(pokemon.height) M")
                makeDetailsRow(title: "Weight", value: "\(pokemon.weight) KG")
                //                Text("\(pokemon.height, specifier: "%.1f") M")
                //                Text("\(pokemon.weight, specifier: "%.1f") KG")
                
            }
            Spacer()
        }
        .padding(15)
        .background(pokemon.mainType.color.opacity(0.2))
    }
    
    private var headerSection: some View {
        VStack {
            HStack {
                Text("#\(pokemon.id)")
                    .foregroundColor(pokemon.mainType.color)
                Text(pokemon.name)
                    .font(.system(size: 26).bold())
                Spacer()
            }
            Text(pokemon.mainType.name)
            Image(pokemon.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipped()
        }
    }
    
    private func makeDetailsRow(title: String, value: String) -> some View {
        
        HStack {
            Text(title)
                .font(.system(size: 20))
            Text(value)
                
        }
        .padding(10)
    }
    
    struct PokemonDetailsView_Previews: PreviewProvider {
        static var previews: some View {
            PokemonDetailsView(pokemon: Pokemon.charmander)
        }
    }
}

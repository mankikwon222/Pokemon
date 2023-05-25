//
//  LazyTestView.swift
//  PokemonTest
//
//  Created by Manki Kwon on 2023-05-25.
//

import SwiftUI

struct LazyTestView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<100) { id in
                    HStack {
                        Spacer()
                        Text("Row \(id)")
                        Spacer()
                    }
                    .onAppear {
                        print("+Row \(id)")
                    }
                    .onDisappear {
                        print("-Row \(id)")
                    }
                }
            }
        }
    }
}

struct LazyTestView_Previews: PreviewProvider {
    static var previews: some View {
        LazyTestView()
    }
}

//
//  Type.swift
//  Pokemon
//
//  Created by Manki Kwon on 2023-05-24.
//

import Foundation
import SwiftUI

enum ElementType {
    case fire, grass, water, electric, ice, poison, flying, rock, ghost, dragon, dark, fairy, bug, steel, ground, normal
    
    var name: String {
        
        switch self {
        case .bug:
            return "Bug"
        case .fire:
            return "Fire"
        case .grass:
            return "Grass"
        case .water:
            return "Water"
        case .electric:
            return "Electric"
        case .ice:
            return "Ice"
        case .poison:
            return "Poison"
        case .flying:
            return "Flying"
        case .rock:
            return "Rock"
        case .ghost:
            return "Ghost"
        case .dragon:
            return "Dragon"
        case .dark:
            return "Dark"
        case .fairy:
            return "Fairy"
        case .steel:
            return "Steel"
        case .ground:
            return "Ground"
        case .normal:
            return "Normal"
        }
    }
    
    var color: Color {
        
        switch self {
        case .bug:
            return .orange
        case .fire:
            return .red
        case .grass:
            return .green
        case .water:
            return .blue
        case .electric:
            return .yellow
        case .ice:
            return .teal
        case .poison:
            return .purple
        case .flying:
            return .mint
        case .rock:
            return .brown
        case .ghost:
            return .purple
        case .dragon:
            return .cyan
        case .dark:
            return .indigo
        case .fairy:
            return .pink
        case .steel:
            return .gray
        case .ground:
            return .brown
        case .normal:
            return .secondary
        
        }
    }
}

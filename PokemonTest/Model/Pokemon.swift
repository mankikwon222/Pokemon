//
//  Pokemon.swift
//  Pokemon
//
//  Created by Manki Kwon on 2023-05-24.
//

import Foundation

struct Pokemon: Identifiable {
    
    var id: Int
    var name: String
    var mainType: ElementType
    var subTypes: [ElementType]
    var height: Double
    var weight: Double
    var imageName: String
    var iconName: String
    
    static let pokemons: [Pokemon] = [
        .bulbasaur,
        .charmander,
        .squirtle,
        .pidgeot,
        .pikachu,
        .jigglypuff,
        .oddish,
        .onix,
        .lapras,
        .ditto,
        .dratini,
        .togepi
    ].sorted(by: { $0.id < $1.id })
    
    static let charmander: Pokemon = Pokemon(
        id: 4,
        name: "파이리",
        mainType: .fire,
        subTypes: [],
        height: 0.6,
        weight: 8.5,
        imageName: "charmander",
        iconName: "파이리"
    )
    
    static let bulbasaur: Pokemon = Pokemon(
        id: 1,
        name: "이상해씨",
        mainType: .grass,
        subTypes: [.poison],
        height: 0.7,
        weight: 6.9,
        imageName: "bulbasaur",
        iconName: "이상해씨"
    )
    
    static let squirtle: Pokemon = Pokemon(
        id: 7,
        name: "꼬북이",
        mainType: .water,
        subTypes: [],
        height: 0.5,
        weight: 9.0,
        imageName: "squirtle",
        iconName: "꼬부기"
    )
    
    static let pikachu: Pokemon = Pokemon(
        id: 25,
        name: "피카츄",
        mainType: .electric,
        subTypes: [],
        height: 0.4,
        weight: 6.0,
        imageName: "pikachu",
        iconName: "피카츄"
    )
    
    static let ditto: Pokemon = Pokemon(
        id: 132,
        name: "메타몽",
        mainType: .normal,
        subTypes: [],
        height: 0.3,
        weight: 4.0,
        imageName: "ditto",
        iconName: "메타몽"
    )
    
    static let togepi: Pokemon = Pokemon(
        id: 175,
        name: "토게피",
        mainType: .fairy,
        subTypes: [],
        height: 0.3,
        weight: 1.5,
        imageName: "togepi",
        iconName: "토게피"
    )
    
    static let jigglypuff: Pokemon = Pokemon(
        id: 39,
        name: "푸린",
        mainType: .fairy,
        subTypes: [.normal],
        height: 0.5,
        weight: 5.5,
        imageName: "jigglypuff",
        iconName: "푸린"
    )
    
    static let oddish: Pokemon = Pokemon(
        id: 43,
        name: "뚜벅초",
        mainType: .poison,
        subTypes: [.grass],
        height: 0.5,
        weight: 5.4,
        imageName: "oddish",
        iconName: "뚜벅초"
    )
    
    static let lapras: Pokemon = Pokemon(
        id: 131,
        name: "라프라스",
        mainType: .ice,
        subTypes: [.water],
        height: 2.5,
        weight: 220.2,
        imageName: "lapras",
        iconName: "라프라스"
    )
    
    static let onix: Pokemon = Pokemon(
        id: 95,
        name: "롱스톤",
        mainType: .rock,
        subTypes: [.ground],
        height: 8.8,
        weight: 210,
        imageName: "onix",
        iconName: "롱스톤"
    )
    
    static let dratini: Pokemon = Pokemon(
        id: 147,
        name: "미뇽",
        mainType: .dragon,
        subTypes: [],
        height: 1.8,
        weight: 3.3,
        imageName: "dratini",
        iconName: "미뇽"
    )
    
    static let pidgeot: Pokemon = Pokemon(
        id: 18,
        name: "피죤투",
        mainType: .flying,
        subTypes: [.normal],
        height: 1.5,
        weight: 39.5,
        imageName: "pidgeot",
        iconName: "피죤투"
    )
}

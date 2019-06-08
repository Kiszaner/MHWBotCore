//
//  Monster.swift
//  MHWBotCore
//
//  Created by Kiszaner on 07/06/2019.
//

import Foundation

struct Monster: Codable {
    let id: Int
    let name: String
    let type: MonsterType
    let species: MonsterSpecies
    let description: String
    let elements: [ElementType]
    let ailments: [Ailment]
    let locations: [Location]
    let resistances: [MonsterResistance]
    let weaknesses: [MonsterWeakness]
    
    enum MonsterType: String, Codable, CodingKey {
        case small, large
    }
    
    enum MonsterSpecies: String, Codable, CodingKey {
        case bird = "bird wyvern", brute = "brute wyvern", fanged = "fanged wyvern", fish, flying = "flying wyvern", piscine = "piscine wyvern"
        case herbivore, lynian, neopteron
        case wingdrake, elder = "elder dragon"
    }
    
    struct MonsterResistance: Codable {
        let element: ElementType
        let condition: String?
    }
    
    struct MonsterWeakness: Codable {
        let element: ElementType
        let stars: Int
        let condition: String?
    }
    
}

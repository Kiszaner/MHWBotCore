//
//  Monster.swift
//  MHWBotCore
//
//  Created by Kiszaner on 07/06/2019.
//

import Foundation

public struct Monster: Codable {
    public let id: Int
    public let name: String
    public let type: MonsterType
    public let species: MonsterSpecies
    public let description: String
    public let elements: [ElementType]
    public let ailments: [Ailment]
    public let locations: [Location]
    public let resistances: [MonsterResistance]
    public let weaknesses: [MonsterWeakness]
    
    public enum MonsterType: String, Codable, CodingKey {
        case small, large
    }
    
    public enum MonsterSpecies: String, Codable, CodingKey {
        case bird = "bird wyvern", brute = "brute wyvern", fanged = "fanged wyvern", fish, flying = "flying wyvern", piscine = "piscine wyvern"
        case herbivore, lynian, neopteron
        case wingdrake, elder = "elder dragon"
    }
    
    public struct MonsterResistance: Codable {
        let element: ElementType
        let condition: String?
    }
    
    public struct MonsterWeakness: Codable {
        let element: ElementType
        let stars: Int
        let condition: String?
    }
    
}

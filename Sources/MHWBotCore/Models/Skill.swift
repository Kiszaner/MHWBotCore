//
//  Skill.swift
//  MHWBotCore
//
//  Created by Kiszaner on 08/06/2019.
//

import Foundation

public struct Skill: Codable {
    public let id: Int
    public let slug: String?
    public let name: String
    public let description: String
    public let ranks: [Rank]?

    public struct Rank: Codable {
        public let id: Int
        public let slug: String
        public let level: Int
        public let description: String
        public let skill: Int
        public let skillName: String
        public let modifiers: Modifiers
    }
    
    public struct Modifiers: Codable {
        public let affinity: Int
        public let attack: Int
        public let damageFire: Int
        public let damageWater: Int
        public let damageice: Int
        public let damageThunder: Int
        public let damageDragon: Int
        public let defense: Int
        public let health: Int
        public let sharpnessBonus: Int
        public let resistAll: Int
        public let resistFire: Int
        public let resistWater: Int
        public let resistIce: Int
        public let resistThunder: Int
        public let resistDragon: Int
    }
}

//
//  Skill.swift
//  MHWBotCore
//
//  Created by Kiszaner on 08/06/2019.
//

import Foundation

struct Skill: Codable {
    let id: Int
    let slug: String?
    let name: String
    let description: String
    let ranks: [Rank]?

    struct Rank: Codable {
        let id: Int
        let slug: String
        let level: Int
        let description: String
        let skill: Int
        let skillName: String
        let modifiers: Modifiers
    }
    
    struct Modifiers: Codable {
        let affinity: Int
        let attack: Int
        let damageFire: Int
        let damageWater: Int
        let damageice: Int
        let damageThunder: Int
        let damageDragon: Int
        let defense: Int
        let health: Int
        let sharpnessBonus: Int
        let resistAll: Int
        let resistFire: Int
        let resistWater: Int
        let resistIce: Int
        let resistThunder: Int
        let resistDragon: Int
    }
}

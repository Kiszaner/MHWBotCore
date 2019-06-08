//
//  Item.swift
//  MHWBotCore
//
//  Created by Kiszaner on 08/06/2019.
//

import Foundation

struct Item: Codable {
    let id: Int
    let name: String
    let description: String
    let rarity: Int
    let carryLimit: Int
    let value: Int?
}

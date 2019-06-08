//
//  Item.swift
//  MHWBotCore
//
//  Created by Kiszaner on 08/06/2019.
//

import Foundation

public struct Item: Codable {
    public let id: Int
    public let name: String
    public let description: String
    public let rarity: Int
    public let carryLimit: Int
    public let value: Int?
}

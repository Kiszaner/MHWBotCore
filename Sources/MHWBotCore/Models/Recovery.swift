//
//  Recovery.swift
//  MHWBotCore
//
//  Created by Kiszaner on 08/06/2019.
//

import Foundation

enum RecoveryAction: String, Codable, CodingKey {
    case crouch, dodge
}

struct Recovery: Codable {
    let actions: [RecoveryAction]
    let items: [Item]
}

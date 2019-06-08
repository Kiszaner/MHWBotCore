//
//  Recovery.swift
//  MHWBotCore
//
//  Created by Kiszaner on 08/06/2019.
//

import Foundation

public enum RecoveryAction: String, Codable, CodingKey {
    case crouch, dodge
}

public struct Recovery: Codable {
    public let actions: [RecoveryAction]
    public let items: [Item]
}

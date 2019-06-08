//
//  Ailment.swift
//  MHWBotCore
//
//  Created by Kiszaner on 08/06/2019.
//

import Foundation

public struct Ailment: Codable {
    public let id: Int
    public let name: String
    public let description: String
    public let recovery: Recovery
    public let protection: Protection
}

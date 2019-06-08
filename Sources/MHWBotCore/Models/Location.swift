//
//  Location.swift
//  MHWBotCore
//
//  Created by Kiszaner on 08/06/2019.
//

import Foundation

public struct Location: Codable {
    public let id: Int
    public let name: String
    public let zoneCount: Int
    public let camps: [Camp]?
    
    public struct Camp: Codable {
        public let id: Int
        public let name: String
        public let zone: Int
    }
}

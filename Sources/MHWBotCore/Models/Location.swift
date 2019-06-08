//
//  Location.swift
//  MHWBotCore
//
//  Created by Kiszaner on 08/06/2019.
//

import Foundation

struct Location: Codable {
    let id: Int
    let name: String
    let zoneCount: Int
    let camps: [Camp]?
    
    struct Camp: Codable {
        let id: Int
        let name: String
        let zone: Int
    }
}

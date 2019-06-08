//
//  Ailment.swift
//  MHWBotCore
//
//  Created by Kiszaner on 08/06/2019.
//

import Foundation

struct Ailment: Codable {
    
    let id: Int
    let name: String
    let description: String
    let recovery: Recovery
    let protection: Protection
}

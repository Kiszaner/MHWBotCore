//
//  GeneralParser.swift
//  MHWBotCore
//
//  Created by Kiszaner on 08/06/2019.
//

import Foundation

struct GeneralParser {
    static func parse<T: Codable>(data: Data) throws -> [T] {
        let jsonDecoder = JSONDecoder()
        return try jsonDecoder.decode(Array<T>.self, from: data)
    }
}

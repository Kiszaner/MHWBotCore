//
//  MHWBotFactory.swift
//  MHWBotCore
//
//  Created by Kiszaner on 08/06/2019.
//

import Foundation

extension MonstersService {
    public static func make() -> MonstersService {
        let apiRequestManager = APIRequestManager()
        return MonstersService(endpoint: Endpoint.base, apiRequestManager: apiRequestManager)
    }
}

//
//  APIService.swift
//  MHWBotCore
//
//  Created by Kiszaner on 08/06/2019.
//

import Foundation

public enum APIError: Error {
    case malformedUrl, parseError(Error?), error
}

public class APIService {
    
    let endpoint: String
    let apiRequestManager: APIRequestManager
    
    init(endpoint: String, apiRequestManager: APIRequestManager) {
        self.endpoint = endpoint
        self.apiRequestManager = apiRequestManager
    }

}

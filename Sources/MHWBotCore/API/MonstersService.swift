//
//  Service.swift
//  MHWBotCore
//
//  Created by Kiszaner on 08/06/2019.
//

import Foundation

public typealias MonstersResult = (Result<[Monster], APIError>) -> Void

public final class MonstersService: APIService {
    let monsters = Endpoint.monsters

    public func getMonsters(completionHandler: @escaping MonstersResult) {
        guard let urlRequest = URL(string: endpoint + "/" + monsters) else {
            completionHandler(.failure(.malformedUrl))
            return
        }
        
        apiRequestManager.performRequest(withUrl: urlRequest) { data, _, error in
            guard let data = data else {
                completionHandler(.failure(.error))
                return
            }
            do {
            let response: [Monster] = try GeneralParser.parse(data: data)
                completionHandler(.success(response))
            } catch {
                completionHandler(.failure(.parseError(error)))
                return
            }
        }
    }
}

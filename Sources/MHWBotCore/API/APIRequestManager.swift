//
//  APIRequestManager.swift
//  MHWBotCore
//
//  Created by Kiszaner on 08/06/2019.
//

import Foundation

typealias RequestResult = ((Data?, URLResponse?, Error?) -> Void)

final class APIRequestManager {
    
    func performRequest(withUrl url: URL, completionHandler: @escaping RequestResult) {
        let task = URLSession.shared.dataTask(with: url, completionHandler: completionHandler)
        task.resume()
    }
}

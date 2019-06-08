//
//  main.swift
//  ShowcaseBot
//
//  Created by Kiszaner on 08/06/2019.
//

import Foundation
import MHWBotCore

let dispatchGroup = DispatchGroup()
let apiService = MonstersService.make()

dispatchGroup.enter()
apiService.getMonsters { result in
    switch result {
    case .success(let response):
        print(response.map { $0.name })
    case .failure(let error):
        print(error)
    }
    dispatchGroup.leave()
}
dispatchGroup.notify(queue: .main) {
    print("Finished!")
}
dispatchMain()

//
//  API.swift
//  smw-ios
//
//  Created by Charles Prado on 31/08/19.
//  Copyright © 2019 Charles Prado. All rights reserved.
//

import Foundation
import Moya

class API {
    static let provider = MoyaProvider<WordsAPI>(plugins: [NetworkLoggerPlugin(verbose: true)])
    
    static func getWords(completion: @escaping ([Word]) -> ()) {
        provider.request(.words) { result in
            switch result {
            case let .success(response):
                do {
                    let results = try JSONDecoder().decode([Word].self, from: response.data)
                    completion(results)
                } catch let error {
                    print(error)
                }
            case let .failure(error):
                print(error)
            }
        }
    }
}

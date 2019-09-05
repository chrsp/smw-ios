//
//  WordsAPI.swift
//  smw-ios
//
//  Created by Charles Prado on 05/09/19.
//  Copyright © 2019 Charles Prado. All rights reserved.
//

import Moya

enum WordsAPI {
    case words
}

extension WordsAPI: TargetType {
      static var basePath = (Bundle.main.infoDictionary?["API_BASE_PATH"] as? String)!
        
        var baseURL: URL {
            return URL(fileURLWithPath: WordsAPI.basePath)
        }
        
        var path: String {
            switch self {
            case .words:
                return "/words"
            }
        }
        
        var method: Method {
            return .get
        }
    
        var sampleData: Data {
            return "No sample data".data(using: String.Encoding.utf8)!
        }
    
        var task: Task {
            return .requestPlain
        }
        
        var headers: [String : String]? {
            return nil
        }
}

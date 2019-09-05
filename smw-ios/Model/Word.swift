//
//  Word.swift
//  smw-ios
//
//  Created by Charles Prado on 31/08/19.
//  Copyright © 2019 Charles Prado. All rights reserved.
//

import Foundation

struct Word: Codable {
    var desc: String
    
    enum CodingKeys: String, CodingKey {
        case desc
    }
}

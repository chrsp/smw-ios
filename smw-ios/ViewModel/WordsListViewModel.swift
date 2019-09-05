//
//  WordsViewModel.swift
//  smw-ios
//
//  Created by Charles Prado on 05/09/19.
//  Copyright © 2019 Charles Prado. All rights reserved.
//

import Foundation
import SwiftUI

class WordsListViewModel: ObservableObject {
    @Published var words: [Word] = []
    
    init() {
        fetchWords()
    }
    
    func fetchWords() {
        API.getWords() { words in
            self.words = words
        }
    }
}

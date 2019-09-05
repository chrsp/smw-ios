//
//  ContentView.swift
//  smw-ios
//
//  Created by Charles Prado on 31/08/19.
//  Copyright © 2019 Charles Prado. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = WordsListViewModel()
    
    var body: some View {
        List(viewModel.words) { word in
            VStack(alignment: .leading) {
                Text(word.desc)
                .lineLimit(nil)
            }
        }
    }
    
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

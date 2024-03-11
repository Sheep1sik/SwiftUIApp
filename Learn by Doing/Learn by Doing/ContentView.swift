//
//  ContentView.swift
//  Learn by Doing
//
//  Created by 양원식 on 2024/03/11.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY
    
    var cards: [Card] = cardData
    
    // MARK: - FUNCTION
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20, content: {
                ForEach(cards) { item in
                    CardView(card: item)
                }
            })
            .padding(20)
        }
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cards: cardData)
    }
}

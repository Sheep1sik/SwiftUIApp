//
//  CardModel.swift
//  Learn by Doing
//
//  Created by 양원식 on 2024/03/11.
//

import SwiftUI

// MARK: - CARD MODEL

struct Card: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
}

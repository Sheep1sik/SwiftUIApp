//
//  CardView.swift
//  Learn by Doing
//
//  Created by 양원식 on 2024/03/11.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTY
    
    var card: Card
    
    // MARK: - FUNCTION
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            Image(card.imageName)
            
            VStack(content: {
                Text(card.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Text(card.headline)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
            })
            .offset(y: -218)
            
            Button(action: {
                print("Button was tapped.")
                
                playSound(sound: "sound-chime", type: "mp3")
            }) {
                HStack {
                    Text(card.callToAction.uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .accentColor(Color.white)
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .accentColor(Color.white)
                }
                .padding(.vertical)
                .padding(.horizontal)
                .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            }
            .offset(y: 210)
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}

// MARK: - PREVIEW

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[6])
            .previewLayout(.sizeThatFits)
    }
}

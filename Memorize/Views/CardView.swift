//
//  CardView.swift
//  Memorize
//
//  Created by Sarah WATREMET on 17/10/2022.
//

import SwiftUI

struct CardView: View {
    let card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if card.isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
    }
}


//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView(card: )
//    }
//}

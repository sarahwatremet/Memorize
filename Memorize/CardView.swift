//
//  CardView.swift
//  Memorize
//
//  Created by Sarah WATREMET on 17/10/2022.
//

import SwiftUI

struct CardView: View {
  var content: String
  @State var isFaceUp: Bool = true
  
  var body: some View {
    ZStack {
      let shape = RoundedRectangle(cornerRadius: 20)
      if isFaceUp {
        shape.fill().foregroundColor(.white)
        shape.strokeBorder(lineWidth: 3)
        Text(content).font(.largeTitle)
      } else {
        shape.fill()
      }
    }
    .onTapGesture{
      isFaceUp = !isFaceUp
    }
  }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
      CardView(content: "😡")
    }
}

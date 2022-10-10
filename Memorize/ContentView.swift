//
//  ContentView.swift
//  Memorize
//
//  Created by Sarah WATREMET on 04/10/2022.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🌗", "🪐", "🌚", "🌞","🌝", "🌜", "🌕", "🌛", "🌖", "🌘", "🌑", "🌒", "🌓", "🌔", "🌙", "🌎", "🌍", "🌏", "☄️"]
    @State var emojiCount = 9
    
    var body: some View {
        VStack {
          ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
              ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
              }
            }
          }
            .foregroundColor(.yellow)
            Spacer()
            HStack {
                remove
                Spacer()
                add
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
    
    var add: some View {
        Button{
          if emojiCount < emojis.count {
            emojiCount += 1
          }
        } label: {
            VStack {
                Image(systemName: "plus.app")
            }
        }
    }
    
    var remove: some View {
        Button{
          if emojiCount > 1 {
            emojiCount -= 1
          }
        } label: {
            VStack {
                Image(systemName: "minus.square")
            }
        }
    }
}

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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

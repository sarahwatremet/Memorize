//
//  ContentView.swift
//  Memorize
//
//  Created by Sarah WATREMET on 04/10/2022.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🌗", "🪐", "🌚", "🌞","🌝", "🌜", "🌕", "🌛", "🌖", "🌘", "🌑", "🌒", "🌓", "🌔", "🌙", "🌎", "🌍", "🌏", "☄️"]
    @State var emojiCount = 5
    
    var body: some View {
        VStack {
            HStack {
                ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                    CardView(content: emoji)
                }
            }
            HStack {
                remove
                Spacer()
                add
            }
            .padding(.horizontal)
        }
        .padding(.horizontal)
        .foregroundColor(.blue)
    }
    
    var add: some View {
        Button(action: {
            emojiCount += 1
        }, label: {
            VStack {
                Image(systemName: "plus.app")
            }
        })
    }
    
    var remove: some View {
        Button(action: {
            emojiCount -= 1
        }, label: {
            VStack {
                Image(systemName: "minus.square")
            }
        })
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
                shape.stroke(lineWidth: 3)
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

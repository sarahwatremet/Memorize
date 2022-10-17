//
//  ClothesThemeView.swift
//  Memorize
//
//  Created by Sarah WATREMET on 17/10/2022.
//

import SwiftUI

struct FruitsThemeView: View {
  var fruitsTheme = ["🍏", "🍎", "🍐", "🍊", "🍋", "🍌", "🍉", "🍇", "🍓", "🫐", "🍈", "🍒", "🍑", "🥭", "🍍", "🥥", "🥝"]
  @State var emojiCount = 9
    
  var body: some View {
    NavigationStack {
      VStack {
        ScrollView {
          LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
            ForEach(fruitsTheme.shuffled()[0..<emojiCount], id: \.self) { emoji in
              CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
            }
          }
        }
        .foregroundColor(.red)
        .font(.largeTitle)
        .padding(.horizontal)
      }
      .padding(.horizontal)
      .navigationTitle("Memorize!")
        .navigationBarTitleDisplayMode(.inline)
    }
  }
    
//    var add: some View {
//        Button{
//          if emojiCount < emojis.count {
//            emojiCount += 1
//          }
//        } label: {
//            VStack {
//                Image(systemName: "plus.app")
//            }
//        }
//    }
//
//    var remove: some View {
//        Button{
//          if emojiCount > 1 {
//            emojiCount -= 1
//          }
//        } label: {
//            VStack {
//                Image(systemName: "minus.square")
//            }
//        }
//    }
}

struct FruitsThemeView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsThemeView()
    }
}


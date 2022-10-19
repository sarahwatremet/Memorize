//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Sarah WATREMET on 19/10/2022.
//

import SwiftUI

class EmojiMemoryGame {
  static let planetThemeEmojis = ["🌗", "🪐", "🌚", "🌞","🌝", "🌜", "🌕", "🌛", "🌖", "🌘", "🌑", "🌒", "🌓", "🌔", "🌙", "🌎", "🌍", "🌏", "☄️"]
  
  static func createMemoryGame() -> MemoryGame<String> {
    MemoryGame<String>(numberOfPairsOfCards: 5) { pairIndex in
      planetThemeEmojis[pairIndex]
    }
  }
  
  private(set) var model: MemoryGame<String> = createMemoryGame()
}


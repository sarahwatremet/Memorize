//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Sarah WATREMET on 04/10/2022.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            PlanetThemeView(viewModel: game)
        }
    }
}

//
//  ContentView.swift
//  Memorize
//
//  Created by Sarah WATREMET on 04/10/2022.
//

import SwiftUI

struct PlanetThemeView: View {
    let viewModel: EmojiMemoryGame
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                    ForEach(viewModel.cards) { card in
                        CardView(card: card)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.yellow)
            .font(.largeTitle)
            .padding(.horizontal)
        }
        .padding(.horizontal)
        .navigationTitle("Memorize!")
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        PlanetThemeView(viewModel: game)
    }
}

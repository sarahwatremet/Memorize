//
//  PlantTheme.swift
//  Memorize
//
//  Created by Sarah WATREMET on 17/10/2022.
//

//import SwiftUI
//
//struct PlantThemeView: View {
//  var plantTheme = ["ðĩ", "ðē", "ðģ", "ðī", "ðą", "ðŋ", "âïļ", "ð", "ð", "ðŠī", "ð", "ð"]
//  @State var emojiCount = 12
//    
//  var body: some View {
//    NavigationStack {
//      VStack {
//        ScrollView {
//          LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
//            ForEach(plantTheme.shuffled()[0..<emojiCount], id: \.self) { emoji in
//              CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
//            }
//          }
//        }
//        .foregroundColor(.green)
//        .font(.largeTitle)
//        .padding(.horizontal)
//      }
//      .padding(.horizontal)
//      .navigationTitle("Memorize!")
//        .navigationBarTitleDisplayMode(.inline)
//    }
//  }
//}
//
//struct PlantThemeView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlantThemeView()
//    }
//}


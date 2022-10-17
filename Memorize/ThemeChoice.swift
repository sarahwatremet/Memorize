//
//  ThemeChoice.swift
//  Memorize
//
//  Created by Sarah WATREMET on 17/10/2022.
//

import SwiftUI

struct ThemeChoice: View {
  var body: some View {
    NavigationStack {
      List {
        NavigationLink(
          "Theme 1",
          destination: {
            PlanetThemeView()
          })
        NavigationLink(
          "Theme 2",
          destination: {
            PlantThemeView()
        })
        NavigationLink(
          "Theme 3",
          destination: {
            FruitsThemeView()
        })
      }
      .navigationTitle("Chose a theme:")
      .navigationBarTitleDisplayMode(.inline)
    }
  }
}

struct ThemeChoice_Previews: PreviewProvider {
    static var previews: some View {
        ThemeChoice()
    }
}

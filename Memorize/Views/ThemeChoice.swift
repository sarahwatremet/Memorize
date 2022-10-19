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
          destination: {
            PlanetThemeView()
          }, label: {
            VStack(alignment: .leading) {
              HStack {
                Text("Planets")
                Image(systemName: "globe.asia.australia")
              }
              Text("Planet and space emojis")
                .font(.footnote)
            }
          })
        
        NavigationLink(destination: {
          PlantThemeView()
        }, label: {
          VStack(alignment: .leading) {
            HStack {
              Text("Plants")
              Image(systemName: "leaf")
            }
            Text("Plant and trees emojis")
              .font(.footnote)
          }
        })
        
        NavigationLink(destination: {
          FruitsThemeView()
        }, label: {
          VStack(alignment: .leading) {
            HStack {
              Text("Fruits")
              Image(systemName: "applelogo")
            }
            Text("Fruits emojis")
              .font(.footnote)
          }
        })
      }
      .navigationTitle("Choose a theme:")
      .navigationBarTitleDisplayMode(.inline)
    }
  }
}

struct ThemeChoice_Previews: PreviewProvider {
    static var previews: some View {
        ThemeChoice()
    }
}

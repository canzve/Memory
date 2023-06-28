//
//  ContentView.swift
//  Memory
//
//  Created by Nebojsa Pavlovic on 28.6.23..
//

import SwiftUI

struct ContentView: View {

  @State var difficulty = Difficulty.easy
  
  @State private var isPresented = false
  
  var body: some View {
    VStack(spacing: 30) {
      Button(Difficulty.easy.description) {
        difficulty = .easy
        isPresented = true
      }.buttonStyle(BigButtonStyle())
      
      Button(Difficulty.medium.description) {
        difficulty = .medium
        isPresented = true
      }.buttonStyle(BigButtonStyle(colorString: "sunflower"))
      
      Button(Difficulty.hard.description) {
        difficulty = .hard
        isPresented = true
      }.buttonStyle(BigButtonStyle(colorString: "alizarin"))
      
    }
    .onChange(of: difficulty) { newValue in
        difficulty = newValue
    }
    .fullScreenCover(isPresented: $isPresented) {
      ZStack {
        Color("greenSea")
        GameView(difficulty: $difficulty)
      }.ignoresSafeArea()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(difficulty: .hard)
  }
}

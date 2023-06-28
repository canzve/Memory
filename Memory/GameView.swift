//
//  GameView.swift
//  Memory
//
//  Created by Nebojsa Pavlovic on 28.6.23..
//

import SwiftUI

struct GameView: View {
  
  @Binding var difficulty: Difficulty
  
  var rows: [GridItem]!
  
  @ObservedObject var vm: MemoryGame
  
  init(difficulty: Binding<Difficulty>) {
    _difficulty = difficulty
    vm = MemoryGame(difficulty: difficulty.wrappedValue)
    rows = Array(repeating: GridItem(.flexible(maximum: 86), spacing: 5), count: difficulty.wrappedValue == .easy ? 3 : 4)
  }
  
  var body: some View {
    ZStack {
      Color("greenSea").ignoresSafeArea()
      LazyHGrid(rows: rows, spacing: 5) {
        
        ForEach(0..<vm.cards.count, id: \.self) { idx in
          let card = vm.cards[idx]
          CardView(card: card)
            .onTapGesture {
              withAnimation {
                flip(card)
                //card.selected.toggle()
              }
            }
            .rotation3DEffect(.degrees(card.selected ? 180 : 0), axis: (x: 0, y: 1, z: 0))
        }
      }
    }
  }
  
  func flip(_ card: Card) {
    if let cardIdx = index(of: card) {
      vm.cards[cardIdx].selected.toggle()
    }
  }

  func index(of card: Card) -> Int? {
    vm.cards.firstIndex(where: { $0 == card })
  }
  
}

struct GameView_Previews: PreviewProvider {
  static var previews: some View {
    GameView(difficulty: .constant(.easy))
  }
}

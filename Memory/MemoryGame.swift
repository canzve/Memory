//
//  MemoryGame.swift
//  Memory
//
//  Created by Nebojsa Pavlovic on 28.6.23..
//

import SwiftUI

class MemoryGame: ObservableObject {
  
  var difficulty: Difficulty
  @Published var cards: [Card] = []
  
  init(difficulty: Difficulty) {
    self.difficulty = difficulty
    cards = createDeck(difficulty.rawValue)
  }
  
    func createDeck(_ num: Int) -> [Card] {
    var cards = [Card]()
    
    while cards.count < num {
      let rank = Rank.allCases.randomElement()!
      let suit = Suit.allCases.randomElement()!
      
      let card1 = Card(rank: rank, suit: suit, id: cards.count)
      let card2 = Card(rank: rank, suit: suit, id: cards.count + 1)
      
      if !cards.containsPair(card1) && !cards.containsPair(card2) {
        cards.append(card1)
        cards.append(card2)
      }
    }
    return cards.FYShuffled()
  }

}

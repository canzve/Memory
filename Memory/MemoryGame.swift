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
    let crds = createDeck(numCards: difficulty.rawValue/2)
    cards.append(contentsOf: crds)
  }
  
  func fullDeck() -> [Card] {
    var cards = [Card]()
    for rank in Rank.allCases {
      for suit in Suit.allCases {
        let card = Card(rank: rank, suit: suit)
        cards.append(card)
      }
    }
    return cards
  }
  
  func createDeck(numCards: Int) -> [Card] {
    let halfDeck = deckOfNumberOfCards(numCards)
    return (halfDeck + halfDeck).shuffled()
  }
  
  func deckOfNumberOfCards(_ num: Int) -> [Card] {
    Array(fullDeck()[0..<num])
  }

}

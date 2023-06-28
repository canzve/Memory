//
//  Deck.swift
//  Memory
//
//  Created by Nebojsa Pavlovic on 28.6.23..
//

import Foundation

struct Deck {
  
  fileprivate var cards = [Card]()
  
  static func full() -> Deck {
    var deck = Deck()
    for rank in Rank.allCases {
      for suit in Suit.allCases {
        let card = Card(rank: rank, suit: suit)
        deck.append(card)
      }
    }
    return deck
  }
  
  func deckOfNumberOfCards(_ num: Int) -> Deck {
    return Deck(cards: Array(cards[0..<num]))
  }
  
  // Fisher-Yates (fast and uniform) shuffle
  func FYShuffled() -> Deck {
    var list = cards
    for i in 0..<(list.count - 1) {
      let j = Int(arc4random_uniform(UInt32(list.count - i))) + i
      if i != j {
        list.swapAt(i, j)
      }
    }
    return Deck(cards: list)
  }
  
  func fisherYatesShuffle() -> Deck {
    var list = cards
    for i in 0..<list.count {
      let randomIndex = Int.random(in: i..<list.count)
      if i != randomIndex {
        list.swapAt(i, randomIndex)
      }
    }
    return Deck(cards: list)
  }


}

extension Deck {
  
  fileprivate mutating func append(_ card: Card) {
    cards.append(card)
  }
  
  subscript(index: Int) -> Card {
    get { return cards[index] }
  }
  
  var count: Int {
    get { return cards.count }
  }
}

func +(deck1: Deck, deck2: Deck) -> Deck {
  return Deck(cards: deck1.cards + deck2.cards)
}

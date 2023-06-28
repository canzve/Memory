//
//  Card.swift
//  Memory
//
//  Created by Nebojsa Pavlovic on 28.6.23..
//

import Foundation

struct Card: CustomStringConvertible {
  let rank: Rank
  let suit: Suit
  var selected: Bool = false
  
  var cardName: String {
    if selected {
      return "\(rank.description)_of_\(suit.description)"
    } else {
      return "back"
    }
  }
  
  var description: String {
    return "\(rank.description)_of_\(suit.description)"
  }
}

func ==(card1: Card, card2: Card) -> Bool {
  return card1.rank == card2.rank && card1.suit == card2.suit && card1.selected == card2.selected
}

//
//  Array+Extensions.swift
//  MemoryTest
//
//  Created by Nebojsa Pavlovic on 1.7.23..
//

import Foundation

extension Array where Element == Card {
  mutating func FYShuffled() -> [Element] {
    for i in 0..<self.count {
      let randomIndex = Int.random(in: i..<self.count)
      if i != randomIndex {
        self.swapAt(i, randomIndex)
      }
    }
    return self
  }
  
  func containsPair(_ card: Card) -> Bool {
    let matchingCards = self.filter { $0.rank == card.rank && $0.suit == card.suit }
    return matchingCards.count >= 2
  }
}

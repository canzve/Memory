//
//  Suit.swift
//  Memory
//
//  Created by Nebojsa Pavlovic on 28.6.23..
//

import Foundation

enum Suit: CustomStringConvertible, CaseIterable {
  case spades, hearts, diamonds, clubs
  
  var description: String {
    switch self {
    case .spades:
      return "spades"
    case .hearts:
      return "hearts"
    case .diamonds:
      return "diamonds"
    case .clubs:
      return "clubs"
    }
  }
}

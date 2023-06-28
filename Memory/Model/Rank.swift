//
//  Rank.swift
//  Memory
//
//  Created by Nebojsa Pavlovic on 28.6.23..
//

import Foundation

enum Rank: Int, CaseIterable, CustomStringConvertible {
  case ace = 1
  case two, three, four, five, six, seven, eight, nine, ten
  case jack, queen, king
  var description: String {
    switch self {
    case .ace:
      return "ace"
    case .jack:
      return "jack"
    case .queen:
      return "queen"
    case .king:
      return "king"
    default:
      return String(self.rawValue)
    }
  }
}

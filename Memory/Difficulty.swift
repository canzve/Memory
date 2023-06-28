//
//  Difficulty.swift
//  Memory
//
//  Created by Nebojsa Pavlovic on 28.6.23..
//

import Foundation

enum Difficulty: Int, CustomStringConvertible {
  case easy = 12
  case medium = 24
  case hard = 32
  
  var description: String {
    switch self {
    case .easy: return "Easy"
    case .medium: return "Medium"
    case .hard: return "Hard"
    }
  }
}

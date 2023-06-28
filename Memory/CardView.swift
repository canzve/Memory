//
//  CardView.swift
//  Memory
//
//  Created by Nebojsa Pavlovic on 28.6.23..
//

import SwiftUI

struct CardView: View {
  
  var card: Card
  
  var body: some View {
    Image(card.cardName)
      .resizable()
      .scaledToFit()
  }
}


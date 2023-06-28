//
//  CustomButton.swift
//  Memory
//
//  Created by Nebojsa Pavlovic on 28.6.23..
//

import SwiftUI

struct BigButtonStyle: ButtonStyle {
  
  var colorString: String = "emerald"
  
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .font(.custom("Futura-Medium", size: 22))
      .padding(12)
      .frame(width: 200, height: 50)
      .foregroundColor(.white)
      .background(Color(colorString))
      .shadow(color: .black, radius: 2)
      .cornerRadius(4)
  }
}

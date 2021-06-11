//
//  BeginQuizButton.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 10/06/21.
//

import SwiftUI

struct BeginQuizButton: View {
    
// MARK: PROPERTIES
   
    @AppStorage("isOnboarding") var isOnboarding: Bool?

// MARK: BODY
    var body: some View {
        Button(action: {
          isOnboarding = false
        }) {
          HStack(spacing: 8) {
            Text("Begin!")
                .fontWeight(.bold)
                .foregroundColor(.white)
            Image(systemName: "arrow.right.circle")
              .imageScale(.large)
          }
          .padding(.horizontal, 16)
          .padding(.vertical, 10)
          .background(
            Capsule().strokeBorder(Color.white, lineWidth: 1.25)
          )
        } //: BUTTON
        .accentColor(Color.white)
      }
}

struct BeginQuizButton_Previews: PreviewProvider {
    static var previews: some View {
        BeginQuizButton()
            .preferredColorScheme(.dark)
    }
}

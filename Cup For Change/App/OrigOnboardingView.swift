//
//  OrigOnboardingView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 18/06/21.
//

import SwiftUI

struct OrigOnboardingView: View {
    var body: some View {
        VStack {
            Text("Welcome to Cup For Change: your one stop for period flow tracking")
                .foregroundColor(Color("ColorPink6"))
                .multilineTextAlignment(.center)
                .padding(.vertical, 20)
                .padding(.horizontal, 40)
                .font(.body)
                .frame(maxWidth: 350)
            
            Text("Begin The Quiz To Determine Your Flow Type!")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .frame(maxWidth: 300)
                .font(.largeTitle)
                .padding(.vertical, 20)
                .shadow(color: Color("ColorPink6"), radius: 2, x: 5, y: 5)

            
            // MARK: BUTTON
            // BeginQuizButton()
                .padding(.vertical, 30)
            
        } // VSTACK
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorPink1"), Color("ColorPink6")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(30)
        .padding(.horizontal, 10)

    }
}


struct OrigOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OrigOnboardingView()
    }
}

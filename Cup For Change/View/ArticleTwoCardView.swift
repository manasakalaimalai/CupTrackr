//
//  ArticleTwoCardView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 17/07/21.
//

import SwiftUI

struct ArticleTwoCardView: View {
// MARK: PROPERTIES
    
    var articletwo: ArticleTwo = Bundle.main.decode("articlestwo.json")

    // MARK: BODY
    var body: some View {
        
        VStack {
            Text(articletwo.name)
                .foregroundColor(Color.white)
                .font(.callout)
                .fontWeight(.bold)
                .kerning(1.0)
                .padding(.top, 20)
                .padding(.bottom, 30)
                .padding(.horizontal, 10)
            Image(articletwo.image)
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 30)
                .padding(.bottom, 10)
                .opacity(0.8)
                .frame(width: 200, height: 100)
        }
        .frame(width: 200, height: 250)
        .background(LinearGradient(gradient: Gradient(colors: [Color(articletwo.color1), Color(articletwo.color2)]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(20)
        .shadow(color: Color("ColorPink8"), radius: 5, x: 5.0, y: 5.0)
        .padding(.vertical)
    }
}

struct ArticleTwoCardView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleTwoCardView(articletwo: articlestwo[0])
    }
}

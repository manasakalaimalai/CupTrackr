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
            Text(articletwo.title)
                .foregroundColor(.white)
                .font(.headline)
                .fontWeight(.medium)
                .kerning(1.0)
                .padding(20)
            Image(articletwo.image)
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 30)
        }
        .frame(width: 250, height: 330)
        .background(LinearGradient(gradient: Gradient(colors: [Color(articletwo.color1), Color(articletwo.color2)]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(20)
        .shadow(color: Color("ColorPink8"), radius: 5, x: 0.0, y: 0.0)
    }
}


struct ArticleTwoCardView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleTwoCardView(articletwo: articlestwo[0])
    }
}

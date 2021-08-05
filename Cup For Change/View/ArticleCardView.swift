//
//  ArticleCardView.swift
//  EcoTopia
//
//  Created by Manasa Kalaimalai on 29/06/21.
//

import SwiftUI

struct ArticleCardView: View {
// MARK: PROPERTIES
    
    var article: Article = Bundle.main.decode("articles.json")

    // MARK: BODY
    var body: some View {
        
        VStack {
            Text(article.name)
                .foregroundColor(.white)
                .font(.headline)
                .fontWeight(.medium)
                .kerning(1.0)
                .padding(20)
            Image(article.image)
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 30)
        }
        .frame(width: 250, height: 330)
        .background(LinearGradient(gradient: Gradient(colors: [Color(article.color1), Color(article.color2)]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(20)
        .shadow(color: Color("ColorPink8"), radius: 5, x: 0.0, y: 0.0)
    }
}

struct ArticleCardView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleCardView(article: articles[0])
    }
}

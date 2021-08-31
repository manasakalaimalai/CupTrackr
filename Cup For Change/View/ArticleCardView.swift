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
                .foregroundColor(Color.white)
                .font(.callout)
                .fontWeight(.bold)
                .kerning(1.0)
                .padding(.top, 20)
                .padding(.bottom, 30)
                .padding(.horizontal, 10)
            Image(article.image)
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 30)
                .padding(.bottom, 10)
                .opacity(0.8)
                .frame(width: 200, height: 100)
        }
        .frame(width: 200, height: 250)
        .background(LinearGradient(gradient: Gradient(colors: [Color(article.color1), Color(article.color2)]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(20)
        .shadow(color: Color("ColorPink8"), radius: 5, x: 5.0, y: 5.0)
        .padding(.vertical)
    }
}

struct ArticleCardView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleCardView(article: articles[3])
    }
}

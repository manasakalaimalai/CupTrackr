//
//  ArticleScrollView.swift
//  EcoTopia
//
//  Created by Manasa Kalaimalai on 29/06/21.
//

import SwiftUI

struct ArticleReadView: View {
// MARK: PROPERTIES
    var article: Article = Bundle.main.decode("articles.json")
// MARK: BODY
    var body: some View {
        NavigationView() {
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack {
                    Spacer(minLength: 0)

                    VStack {
                        Rectangle()
                            .background(LinearGradient(gradient: Gradient(colors: [Color("pastel1"), Color("pastel11")]), startPoint: .leading, endPoint: .trailing).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width, alignment: .center))
                            .edgesIgnoringSafeArea(.all)
                        Text(article.name)
                            .foregroundColor(Color("ColorPink15"))
                            .font(.title)
                            .fontWeight(.heavy)
                            .kerning(1.0)
                            .background(LinearGradient(gradient: Gradient(colors: [Color("pastel1"), Color("pastel11")]), startPoint: .leading, endPoint: .trailing).frame(width: UIScreen.main.bounds.width, height: 250))
                            .padding(.bottom, 30)
                            .padding(.horizontal, 30)
                        Text("Article  " + String(article.id + 1))
                            .foregroundColor(Color("pastel13"))
                            .font(.body)
                            .fontWeight(.black)
                    } // END OF VSTACK//
                    .padding(.bottom, UIScreen.main.bounds.height/10)

                    VStack {
                        Text(article.content1name)
                            .font(.title3)
                            .foregroundColor(Color("ColorPink16"))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 20)
                        Text(article.content1)
                            .font(.subheadline)
                            .foregroundColor(Color("ColorPink16"))
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, UIScreen.main.bounds.width/10)
                    }
                    .padding(.bottom, 20)
                   VStack {
                        Text(article.content2name)
                            .font(.title3)
                            .foregroundColor(Color("ColorPink16"))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 20)
                        Text(article.content2)
                            .font(.subheadline)
                            .foregroundColor(Color("ColorPink16"))
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, UIScreen.main.bounds.width/10)
                    }
                    .padding(.bottom, 20)
                    VStack {
                        Text(article.content3name)
                            .font(.title3)
                            .foregroundColor(Color("ColorPink16"))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 20)
                        Text(article.content3)
                            .font(.subheadline)
                            .foregroundColor(Color("ColorPink16"))
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, UIScreen.main.bounds.width/10)
                    }
                    .padding(.bottom, 20)
                    VStack {
                        Text(article.content4name)
                            .font(.title3)
                            .foregroundColor(Color("ColorPink16"))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 20)
                        Text(article.content4)
                            .font(.subheadline)
                            .foregroundColor(Color("ColorPink16"))
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, UIScreen.main.bounds.width/10)
                    }
                    .padding(.bottom, 50)

                    Spacer(minLength: 0)
                }
                .edgesIgnoringSafeArea(.all)
            })
            .navigationBarHidden(true)

        }
    }
}

struct ArticleScrollView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(articles) { article in
                    GeometryReader { geo in
                        NavigationLink(
                            destination: ArticleReadView(article: article))
                            {
                            ArticleCardView(article: article)
                            .rotation3DEffect(
                            Angle(degrees: (Double(geo.frame(in: .global).minX) - 40) / -15),
                            axis: (x: 0.0, y: 1.0, z: 0.0))
                            }
                    }
                    .frame(width: UIScreen.main.bounds.width/1.9, height: UIScreen.main.bounds.height/3.1)
                }
                
                // Extra space after last article
                Spacer()
                    .padding()

            } //: END OF HSTACK
            .padding(.horizontal, 30)
                
        } //: END OF SCROLLVIEW
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/3)
        .navigationBarHidden(true)
    }
}

struct ArticleScrollView_Previews: PreviewProvider {
    static var previews: some View {
//        ArticleReadView(article: articles[0])
        ArticleScrollView()
    }
}

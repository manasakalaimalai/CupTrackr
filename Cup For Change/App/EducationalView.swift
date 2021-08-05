//
//  EducationalView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 18/06/21.
//

import SwiftUI

struct EducationalView: View {
// MARK: PROPERTIES

    @State var index = 0
    
    @State var showArticles = false
    
    @State var showQuizzes = false

// MARK: HOME
    var body: some View {
         
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    
                    // ARTICLES & QUIZZES TITLE //
                    HStack {
                       
                            Text("Articles")
                                .font(.caption)
                                .foregroundColor(index == 0 ? .white: Color("ColorPink4").opacity(0.90))
                                .fontWeight(.bold)
                                .padding(.vertical, 6)
                                .padding(.horizontal, 20)
                                .background(Color("ColorPink6").opacity(index == 0 ? 1 : 0.2))
                                .clipShape(Capsule())
                                .onTapGesture {
                                    index = 0
                                }

                            Text("Quizzes")
                                .font(.caption)
                                .foregroundColor(index == 1 ? .white : .white.opacity(0.70))
                                .fontWeight(.bold)
                                .padding(.vertical, 6)
                                .padding(.horizontal, 20)
                                .background(Color("ColorPink6").opacity(index == 1 ? 1 : 0.2))
                                .clipShape(Capsule())
                                .onTapGesture {
                                    index = 1
                                }

                        Spacer()

                    }
                    .padding(.horizontal)
                    .padding(.bottom, 30)
                    
                    // ARTICLE SECTION 1 //
                    HStack {
                        Text("Sustainable Menstruation")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        Spacer()
                    }
                        .padding(.horizontal, 32)
                    
                    // SCROLL CARD VIEW 2 //
                    ArticleScrollView()
                    
                    // ARTICLE SECTION 2 //
                    HStack {
                        Text("Menstrual Hygiene Management")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        Spacer()
                    }
                        .padding(.horizontal, 32)
                    
                    // SCROLL CARD VIEW 2 //
                    ArticleTwoScrollView()
                }

              
            }
            .background(
                LinearGradient(gradient: Gradient(colors: [Color("ColorPink14"), Color("ColorPink4")]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
            )
            .navigationTitle("Learn")
            
        }
    }
}

struct EducationalView_Previews: PreviewProvider {
    static var previews: some View {
        EducationalView()
    }
}

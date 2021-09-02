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
    
    @State var selectedTab = header_title[0]
    
    @Namespace var animation
    
//    let newColor = UIColor(red: 194, green: 216, blue: 211)

// MARK: HOME
    var body: some View {
         
        NavigationView() {
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack {
                    // ARTICLES & QUIZZES TITLE //
                    
                    HStack(spacing: 0) {
                        ForEach(header_title, id: \.self) { header in
                            
                            Spacer()
                            
                            ArticleHeader(title: header, selectedTab: $selectedTab, animation: animation)
                            
                            Spacer()
                        }
                    }
                    .padding(.horizontal, 60)
                    .padding(.top, 50)
                    
                    // ARTICLES
                    
                    if selectedTab == header_title[0] {
 
                        // ARTICLE SECTION 1 //
                        HStack {
                            Text("Sustainable Menstruation")
                                .foregroundColor(Color("ColorPink16"))
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .padding(.horizontal, 65)
                        .padding(.top, 40)
                        .padding(.bottom, 10)
                            
                        // SCROLL CARD VIEW 1 //
                        ArticleScrollView()
                        
                        Spacer(minLength: 0)
                        
                        // ARTICLE SECTION 2 //
                        HStack {
                            Text("Menstrual Hygiene Management")
                                .foregroundColor(Color("ColorPink16")).fontWeight(.bold)
                            Spacer()
                        }
                        .padding(.horizontal, 65)
                        .padding(.top, 20)
                        .padding(.bottom, 10)

                        // SCROLL CARD VIEW 2 //
                        ArticleTwoScrollView()
                        .padding(.horizontal, 32)
                    }
                    
                    // QUIZZES
                    
                    if selectedTab == header_title[1] {
                        GridView(quizzes: quizzes)
                        
                    }
                }
                .edgesIgnoringSafeArea(.all)
                
            })
            .background(Color(.gray).opacity(0.12).edgesIgnoringSafeArea(.all))
            .navigationBarTitle("Learn")
            .navigationBarHidden(true)
        }
    }
}

// QUIZZES LIST VIEW //
struct GridView: View {
    
    var quizzes: [Quiz]
    
    var body: some View {
        
        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 10), count: 1), spacing: 0, content: {
            
            ForEach(quizzes) {quiz in

                ZStack {
                    
                    VStack(spacing : 10) {
                        NavigationLink(destination: SingleQuizView(quiz: quiz)) {
                            SingleCardView(quiz: quiz)
                        }
                                        
                    } // END OF VSTACK
                    .padding(10)
                    
                } // END OF ZSTACK
                
            } // END OF LOOP
        }) // END OF LAZYVGRID
        .padding()
    }

}

// PREVIEW //
struct EducationalView_Previews: PreviewProvider {
    static var previews: some View {
        EducationalView()
    }
}

//// NAVIGATION BAR COLOR //
//extension UIColor {
//    convenience init(red: Int, green: Int, blue: Int) {
//        let newRed = CGFloat(red)/255
//        let newGreen = CGFloat(green)/255
//        let newBlue = CGFloat(blue)/255
//
//        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
//    }
//}

var header_title = ["Article", "Quizzes"]

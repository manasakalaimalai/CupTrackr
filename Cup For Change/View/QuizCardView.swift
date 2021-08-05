//
//  QuizItemView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 30/06/21.
//

import Firebase
import FirebaseFirestoreSwift
import SwiftUI

struct QuizCardView: View {
// MARK: PROPERTIES
    
//    @Binding var correct : Int
//    @Binding var wrong : Int
    @StateObject var data = QuestionView()
    
    var articletwo: ArticleTwo = Bundle.main.decode("articlestwo.json")

    
var body: some View {
// MARK: BODY
    
    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), content: {
        
        ForEach(1...4, id: \.self) { index in

            VStack(spacing : 15) {
                Text("Quiz 1")
                
            }
        }
        
    })
    
    }
}

struct QuizCardView_Previews: PreviewProvider {
    static var previews: some View {
        QuizCardView()
    }
}

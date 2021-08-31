//
//  LearnQuiz.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 24/08/21.
//

import SwiftUI


struct LearnQuiz_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GridQuizView()
        }
    }
}

struct GridQuizView: View {

    @State private var isShowingQuizView: Bool = false

    @State var i : Int = 0
    @State var score : Int = 0

    var body: some View {

        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 10), count: 2), spacing: 0, content: {
            ForEach(quizzes) {quiz in
                ZStack {
                        
                    VStack(spacing : 10) {
                        SingleCardView(quiz: quiz)
                    } // END OF VSTACK
                    .padding(10)
                            
                } // END OF ZSTACK

            } // END OF LOOP
            
            
        }) // END OF LAZYVGRID
        .padding()
    }
}


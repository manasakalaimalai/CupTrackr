//
//  QuizView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 23/08/21.
//

import SwiftUI

struct QuizView: View {
    
    @State var i : Int = 0
    @State var score : Int = 0
    
    var body: some View {
        VStack {
            if(self.i < quizzes1.count) {
                // Question
                
                Spacer()
                
                Text(quizzes1[self.i].question!)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .background(Color("ColorPink14").frame(width: UIScreen.main.bounds.width, height: 400))
                    .padding(.bottom, 230)
                    .padding(.horizontal, 20)

                
                // 1st answer
                Button(action: {
                    self.buttonAction(n: 0)
                }, label: {
                    Text(quizzes1[self.i].answers[0])
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.gray)
                        .background(Capsule().foregroundColor(Color("ColorPink5")))
                        .padding(.vertical)
                        .padding(.horizontal)
                                    
                })
                
                // 2nd answer
                Button(action: {
                    self.buttonAction(n: 1)
                }, label: {
                    Text(quizzes1[self.i].answers[1])
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.gray)
                        .background(Capsule().foregroundColor(Color("ColorPink5")))
                        .padding(.vertical)
                        .padding(.horizontal)
                })
                
                // 3rd answer
                Button(action: {
                    self.buttonAction(n: 2)
                }, label: {
                    Text(quizzes1[self.i].answers[2])
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.gray)
                        .background(Capsule().foregroundColor(Color("ColorPink5")))
                        .padding(.vertical)
                        .padding(.horizontal)
                })
                
                // 4th answer
                Button(action: {
                    self.buttonAction(n: 3)
                }, label: {
                    Text(quizzes1[self.i].answers[3])
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.gray)
                        .background(Capsule().foregroundColor(Color("ColorPink5")))
                        .padding(.vertical)
                        .padding(.horizontal)
                })
                
                Spacer()
            }
            else {
                FinalView(score: self.score)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    func buttonAction(n : Int) {
        if(quizzes1[self.i].correct == n) {
            self.score = self.score + 1
        }
        self.i = self.i + 1
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}

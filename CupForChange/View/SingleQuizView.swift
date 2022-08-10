//
//  SingleQuizView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 25/08/21.
//

import SwiftUI

struct SingleQuizView: View {
   
    var quiz: Quiz
    
    @State var i : Int = 0
    @State var score : Int = 0
    @State var wrong : Int = 0

    
    var body: some View {
        VStack {
            if(self.i < 8) {


                VStack {
                    // score card //
                    HStack {
                        Spacer()
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.green)
                            .font(.subheadline)
                        Text("Correct: \(self.score)")
                            .foregroundColor(Color("ColorPink7"))
                            .fontWeight(.heavy)
                            .font(.subheadline)
                        Spacer()
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.red)
                            .font(.subheadline)
                        Text("Wrong: \(self.wrong)")
                            .foregroundColor(Color("ColorPink7"))
                            .fontWeight(.heavy)
                            .font(.subheadline)
                        Spacer()
                    }
                    .padding(.bottom, 20)
                    .padding(.top, 120)
                    
                    // question //
                    Text(quiz.question[self.i])
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.top, 40)
                        .foregroundColor(.white)
                        .padding(.bottom, 70)
                        .padding(.horizontal, 20)
                    
                }
                .background(Color("ColorPink14").frame(width: UIScreen.main.bounds.width, height: 400))

                // 1st answer
                Button(action: {
                    self.buttonAction(n: 0)
                }, label: {
                    Text(quiz.answers1[self.i])
                        .padding(.vertical, 10)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.gray)
                        .background(Capsule().foregroundColor(Color("ColorPink5")))
                        .padding(.horizontal)
                        .padding(.bottom, 5)
                        .padding(.top, UIScreen.main.bounds.height/13)
                })

                // 2nd answer
                Button(action: {
                    self.buttonAction(n: 1)
                }, label: {
                    Text(quiz.answers2[self.i])
                        .padding(.vertical, 10)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.gray)
                        .background(Capsule().foregroundColor(Color("ColorPink5")))
                        .padding(.vertical, 5)
                        .padding(.horizontal)
                })

                // 3rd answer
                Button(action: {
                    self.buttonAction(n: 2)
                }, label: {
                    Text(quiz.answers3[self.i])
                        .padding(.vertical, 10)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.gray)
                        .background(Capsule().foregroundColor(Color("ColorPink5")))
                        .padding(.vertical, 5)
                        .padding(.horizontal)
                })

                // 4th answer
                Button(action: {
                    self.buttonAction(n: 3)
                }, label: {
                    Text(quiz.answers4[self.i])
                        .padding(.vertical, 10)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.gray)
                        .background(Capsule().foregroundColor(Color("ColorPink5")))
                        .padding(.vertical, 5)
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
        if(quiz.correct[self.i] == n) {
            self.score = self.score + 1
        } else {
            self.wrong = self.wrong + 1
        }
        self.i = self.i + 1
    }
}

struct SingleQuizView_Previews: PreviewProvider {
    static var previews: some View {
        SingleQuizView(quiz: quizzes[1])
    }
}

    
        
    

    


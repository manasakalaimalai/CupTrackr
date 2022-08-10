//
//  CupQuiz.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 23/08/21.
//

import SwiftUI

struct CupQuiz: View {
    
    @State var light : Int = 0
    @State var medium : Int = 0
    @State var heavy : Int = 0
    @State var abnormal : Int = 0
    
    @State var i : Int = 0
    
    var body: some View {
        ZStack {
            Rectangle()
            .foregroundColor(Color("pastel"))

            VStack {
                if(self.i < cupquizzes.count) {
                    // Question
                    Text(cupquizzes[self.i].question!)
                        .font(.title3)
                        .fontWeight(.heavy)
                        .foregroundColor(Color("ColorPink16").opacity(0.7))
                        .multilineTextAlignment(.center)
                        .padding(.top, 70)

                        .background(LinearGradient(gradient: Gradient(colors: [Color("pastel8"), Color("pastel17")]), startPoint: .topLeading, endPoint: .bottomTrailing).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2.5))
                        .padding(.top, 100)
                        .padding(.bottom, 140)
                        .padding(.horizontal, 20)
                    
                    // 1st answer
                    Button(action: {
                        self.lightflow()
                    }, label: {
                        Text(cupquizzes[self.i].answers[0])
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Capsule().foregroundColor(Color("ColorPink5")))
                            .padding(.vertical, 5)
                            .padding(.horizontal)
                    })
                    
                    // 2nd answer
                    Button(action: {
                        self.abnormalflow()

                    }, label: {
                        Text(cupquizzes[self.i].answers[1])
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.gray)
                            .background(Capsule().foregroundColor(Color("ColorPink5")))
                            .padding(.vertical, 5)
                            .padding(.horizontal)
                    })
                    
                    // 3rd answer
                    Button(action: {
                        self.heavyflow()

                    }, label: {
                        Text(cupquizzes[self.i].answers[2])
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.gray)
                            .background(Capsule().foregroundColor(Color("ColorPink5")))
                            .padding(.vertical, 5)
                            .padding(.horizontal)
                    })
                    
                    // 4th answer
                    Button(action: {
                        self.mediumflow()
                    }, label: {
                        Text(cupquizzes[self.i].answers[3])
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.gray)
                            .background(Capsule().foregroundColor(Color("ColorPink5")))
                            .padding(.vertical, 5)
                            .padding(.horizontal)
                    })
                    
                    Spacer()
                }
                else {
                    CupQuizFinalView(light: self.light, medium: self.medium, heavy: self.heavy, abnormal: self.abnormal)
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
    
    func lightflow() {
        self.light = self.light + 1
        self.i = self.i + 1
    }
    
    func mediumflow() {
        self.medium = self.medium + 1
        print(self.$medium)
        self.i = self.i + 1
    }
    
    func heavyflow() {
        self.heavy = self.heavy + 1
        print(self.$heavy)
        self.i = self.i + 1
    }
    
    func abnormalflow() {
        self.abnormal = self.abnormal + 1
        print(self.$abnormal)
        self.i = self.i + 1
    }
}


struct CupQuiz_Previews: PreviewProvider {
    static var previews: some View {
        CupQuiz()
    }
}

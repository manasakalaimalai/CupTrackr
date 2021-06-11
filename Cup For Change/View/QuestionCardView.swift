//
//  QuestionCardView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 11/06/21.
//

/* import SwiftUI

struct QuestionCardView: View {
// MARK: PROPERTIES
    
    var question: [Question] = questionAndButtonText
    
    var currentQuestion: Question = questionAndButtonText[0]
    
    @State private var selection: String? = nil
    @State private var nextQuestion: Bool = false
    @State private var currentQ: Int = 0;
    

    
// MARK: BODY
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    LinearGradient(gradient: Gradient(colors:[Color("ColorPink4"), Color("ColorPink8")]), startPoint: .top, endPoint: .bottom)
                    VStack {
                        Text(questionAndButtonText[currentQ].questionNumber)
                            .fontWeight(.heavy)
                            .font(.largeTitle)
                            .padding(.vertical, 10)
                        Text(questionAndButtonText[currentQ].question)
                            .fontWeight(.bold)
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .multilineTextAlignment(.center)
                    }
                }
                VStack {
            // MARK: BUTTON 1
                    Button(action: {
                        nextQuestion = true
                        if(currentQ < questionAndButtonText.count){
                           currentQ += 1
                        }
                    }) {
                        HStack(spacing: 8) {
                            Image(systemName: "arrow.right.circle")
                                .foregroundColor(.white)
                              .imageScale(.large)
                            Text(questionAndButtonText[currentQ].questionButton1Text)
                                .foregroundColor(.white)
                        }
                        .frame(width: 320, height: 50, alignment: .center)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(lineWidth: 1)
                                .background(LinearGradient(gradient: Gradient(colors: [Color("ColorPink3"), Color("ColorPink2")]), startPoint: .top, endPoint: .bottom).cornerRadius(20))
                        )
                    } //: BUTTON
                    .padding(.vertical, 10)
                    .accentColor(Color.white)
                    Divider().padding(.vertical, 2)
                    
            // MARK: BUTTON 2
                    Button(action: {
                      print("A button was tapped")
                        navigateQuestion()
                    }) {
                        HStack(spacing: 8) {
                            Image(systemName: "arrow.right.circle")
                                .foregroundColor(.white)
                                .imageScale(.large)
                            Text(questionAndButtonText[currentQ].questionButton2Text)
                                .foregroundColor(.white)
                        }
                        .frame(width: 320, height: 50, alignment: .center)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(lineWidth: 1)
                            .background(LinearGradient(gradient: Gradient(colors: [Color("ColorPink3"), Color("ColorPink2")]), startPoint: .top, endPoint: .bottom).cornerRadius(20))
                            )
                        }
                      } //: BUTTON
                    .padding(.vertical, 10)
                    .accentColor(Color.white)
                    Divider().padding(.vertical, 5)
                    
            // MARK: BUTTON 3
                    Button(action: {
                      print("A button was tapped")
                        navigateQuestion()
                    }) {
                        HStack(spacing: 8) {
                            Image(systemName: "arrow.right.circle")
                                .foregroundColor(.white)
                                .imageScale(.large)
                            Text(questionAndButtonText[currentQ].questionButton3Text)
                                .foregroundColor(.white)
                        }
                        .frame(width: 320, height: 50, alignment: .center)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(lineWidth: 1)
                                .background(LinearGradient(gradient: Gradient(colors: [Color("ColorPink3"), Color("ColorPink2")]), startPoint: .top, endPoint: .bottom).cornerRadius(20))
                        )
                        }
                      } //: BUTTON
                    .padding(.vertical, 5)
                    .accentColor(Color.white)
                }
            }
            .navigationBarTitle("Flow Quiz", displayMode: .inline)
        }// NAVIGATION

    
    
    /* func navigateQuestion(){
        nextQuestion = true
        if(currentQ < questionAndButtonText.count){
           currentQ += 1
        }
    }
        
}



struct QuestionCardView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionCardView()
    }
}
 */*/

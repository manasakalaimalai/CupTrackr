//
//  QuestionView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 11/06/21.
//

import SwiftUI

struct QuestionView: View {
// MARK: PROPERTIES
    
    @AppStorage("isQuestion2") var isQuestion2: Bool?

// MARK: BODY
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    LinearGradient(gradient: Gradient(colors:[Color("ColorPink4"), Color("ColorPink8")]), startPoint: .top, endPoint: .bottom)
                    VStack {
                        Text("Question 1")
                            .fontWeight(.heavy)
                            .font(.largeTitle)
                            .padding(.vertical, 10)
                        Text("How would you describe your flow")
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
                        isOnboarding = true
                        isQuestion2 = false
                    }) {
                        HStack(spacing: 8) {
                            Image(systemName: "arrow.right.circle")
                                .foregroundColor(.white)
                              .imageScale(.large)
                            Text("Usually light")
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
                        isQuestion2 = false
                    }) {
                        HStack(spacing: 8) {
                            Image(systemName: "arrow.right.circle")
                                .foregroundColor(.white)
                                .imageScale(.large)
                            Text("Usually heavy")
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
                    Divider().padding(.vertical, 5)
                    
            // MARK: BUTTON 3
                    Button(action: {
                        isQuestion2 = false
                    }) {
                        HStack(spacing: 8) {
                            Image(systemName: "arrow.right.circle")
                                .foregroundColor(.white)
                                .imageScale(.large)
                            Text("Very irregular")
                                .foregroundColor(.white)
                        }
                        .frame(width: 320, height: 50, alignment: .center)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(lineWidth: 1)
                                .background(LinearGradient(gradient: Gradient(colors: [Color("ColorPink3"), Color("ColorPink2")]), startPoint: .top, endPoint: .bottom).cornerRadius(20))
                        )
                      } //: BUTTON
                    .padding(.vertical, 5)
                    .accentColor(Color.white)
                }
            }
            .navigationBarTitle("Flow Quiz", displayMode: .inline)
        }// NAVIGATION
    }
        
}


// MARK: PREVIEW
struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
            .preferredColorScheme(.light)
    }
}

//
//  QuestionCardViews.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 11/06/21.
//

import SwiftUI

struct QuestionCardViews: View {
    
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
                    Text("How would you describe your flow?")
                        .fontWeight(.bold)
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .multilineTextAlignment(.center)
                }
            }
            VStack {
            
            // MARK: BUTTON 1
                NavigationLink(destination: secondView()) {
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
                }
                .padding(.vertical, 10)
                .accentColor(Color.white)
                Divider().padding(.vertical, 2)
                
            // MARK: BUTTON 2
                NavigationLink(destination: secondView()) {
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
                }
                .padding(.vertical, 10)
                .accentColor(Color.white)
                Divider().padding(.vertical, 2)
                
            // MARK: BUTTON 3
                NavigationLink(destination: secondView()) {
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
                }
                .padding(.vertical, 10)
                .accentColor(Color.white)
                    Divider().padding(.vertical, 2)
      }
    }
    .navigationBarTitle("Flow Quiz", displayMode: .inline)
  }
    
}
struct secondView: View {
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    LinearGradient(gradient: Gradient(colors:[Color("ColorPink4"), Color("ColorPink8")]), startPoint: .top, endPoint: .bottom)
                    VStack {
                        Text("Question 2")
                            .fontWeight(.heavy)
                            .font(.largeTitle)
                            .padding(.vertical, 10)
                        Text("How often do you exercise?")
                            .fontWeight(.bold)
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .multilineTextAlignment(.center)
                    }
                }
                VStack {
                
                // MARK: BUTTON 1
                    NavigationLink(destination: secondView()) {
                    HStack(spacing: 8) {
                        Image(systemName: "arrow.right.circle")
                            .foregroundColor(.white)
                          .imageScale(.large)
                        Text("Never, no thank you")
                            .foregroundColor(.white)
                    }
                        .frame(width: 320, height: 50, alignment: .center)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(lineWidth: 1)
                                .background(LinearGradient(gradient: Gradient(colors: [Color("ColorPink3"), Color("ColorPink2")]), startPoint: .top, endPoint: .bottom).cornerRadius(20))
                        )
                    }
                    .padding(.vertical, 10)
                    .accentColor(Color.white)
                    Divider().padding(.vertical, 2)
                    
                // MARK: BUTTON 2
                    NavigationLink(destination: secondView()) {
                    HStack(spacing: 8) {
                        Image(systemName: "arrow.right.circle")
                            .foregroundColor(.white)
                          .imageScale(.large)
                        Text("Sometimes, when I'm motivated")
                            .foregroundColor(.white)
                    }
                        .frame(width: 320, height: 50, alignment: .center)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(lineWidth: 1)
                                .background(LinearGradient(gradient: Gradient(colors: [Color("ColorPink3"), Color("ColorPink2")]), startPoint: .top, endPoint: .bottom).cornerRadius(20))
                        )
                    }
                    .padding(.vertical, 10)
                    .accentColor(Color.white)
                    Divider().padding(.vertical, 2)
                    
                // MARK: BUTTON 3
                    NavigationLink(destination: secondView()) {
                    HStack(spacing: 8) {
                        Image(systemName: "arrow.right.circle")
                            .foregroundColor(.white)
                          .imageScale(.large)
                        Text("Frequently, exercise is a must!")
                            .foregroundColor(.white)
                    }
                        .frame(width: 320, height: 50, alignment: .center)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(lineWidth: 1)
                                .background(LinearGradient(gradient: Gradient(colors: [Color("ColorPink3"), Color("ColorPink2")]), startPoint: .top, endPoint: .bottom).cornerRadius(20))
                        )
                    }
                    .padding(.vertical, 10)
                    .accentColor(Color.white)
                        Divider().padding(.vertical, 2)
          }
        }
        .navigationBarTitle("Flow Quiz", displayMode: .inline)
      }
    }
}
struct QuestionCardViews_Previews: PreviewProvider {
    static var previews: some View {
        QuestionCardViews()
    }
}
}

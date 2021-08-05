//
//  ContentView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 10/06/21.
//

import SwiftUI

struct ContentView: View {
//MARK: PROPERTIES
    
    @AppStorage("isRepeatingOnboarding") var isRepeatingOnboarding: Bool = false
    
// MARK: BODY
    var body: some View {
        
        if isRepeatingOnboarding {
            HomeView()
        } else {
            WalkthroughScreen()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//: WALKTHROUGH SCREEN
struct WalkthroughScreen: View {
    
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        
        // For Slide Animation//
        
        ZStack {
            //: 1ST VIEW
            if currentPage == 1 {
                ScreenView(image: "image1", title: "LEARN", description: "Learn about all things related to sustainable menstruation, educate yourself on proper menstrual hygiene habits, AND take quizzes to test your knowledge!")
                    .transition(.scale)
            }
            //: 2ND VIEW
            if currentPage == 2 {
                ScreenView(image: "image2", title: "TRACK", description: "Use our flow tracker to determine when and how often to change your menstrual cup or reusable pad! You'll get push notifications as reminders. ")
                    .transition(.scale)
            }
            //: 3RD VIEW
            if currentPage == 3 {
                ScreenView(image: "image3", title: "FIND", description: "Connect with other organizations working towards sustainable menstruation around you to buy menstrual cups, donate, and more!")
                    .transition(.scale)
            }
            //: 4TH VIEW
            if currentPage == 4 {
                ScreenView(image: "image4", title: "GET HELP", description: "Featuring a software that analyzes any menstrual-cup related problems or general period issues and redirects you to relevant resources.")
                    .transition(.scale)
            }
        } //: ZSTACK
        .overlay(
            Button(action: {
                // changing views..
                withAnimation(.easeInOut) {
                    if currentPage < totalPages {
                        currentPage += 1
                    } else {
                        currentPage = 1
                    }
                }
            }, label: {
                
                Image(systemName: "arrowtriangle.right")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color("ColorPink2"))
                    .frame(width: 60, height: 60)
                    .background(Color.white)
                    .clipShape(Circle())
                
                // CIRCULAR SLIDER
                    .overlay(
                        ZStack {
                            Circle()
                                .stroke(Color.black.opacity(0.04), lineWidth: 4)
                            Circle()
                                .trim(from: 0, to: CGFloat(currentPage)/CGFloat(totalPages))
                                .stroke(Color.white,lineWidth: 4)
                                .rotationEffect(.init(degrees: 270))
                        }
                        .padding(-10)
                    )
            })
            .padding(.bottom, 40)
            
            , alignment: .bottom
        )
    }
}

struct ScreenView: View {
    
    var image: String
    var title: String
    var description: String
    
    @AppStorage("currentPage") var currentPage = 1
    @AppStorage("isRepeatingOnboarding") var isRepeatingOnboarding: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            HStack {
                
                // Showing "welcome" only on first page
                if currentPage == 1 {
                    Text("welcome..")
                        .font(.title)
                        .fontWeight(.semibold)
                        .kerning(2.5)
                        .foregroundColor(.white)
                } else {
                    // Go back to previous page
                    Button(action: {
                        withAnimation(.easeInOut) {
                            currentPage -= 1
                        }
                    }, label: {
                        HStack {
                            Image(systemName: "arrowtriangle.left")
                                .foregroundColor(.white)
                                .padding(.vertical, 10)
                                .padding(.horizontal)
                                .background(Color.black.opacity(0.04))
                                .cornerRadius(10)
                            Text("Go Back")
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .kerning(1.2)
                        }
                    })
                }
                
                Spacer()
                
                Button(action: {
                    withAnimation(.easeInOut) {
                        isRepeatingOnboarding = true
                    }
                }, label: {
                    Text("Skip to Home")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .kerning(1.2)
                }) //: END OF BUTTON
            } //: HSTACK
            .frame(width: 350, height: 50)
            .padding(.top, 20)
            
            Spacer(minLength: 0)
            
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 450, height: 200, alignment: .center)
                .padding(.vertical, 40)
            
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .background(Color.white.frame(width: 300, height: 2, alignment: .center).offset(y:25))
            Text(description)
                .font(.subheadline)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 10)
                .foregroundColor(Color("ColorPink6"))
                .lineSpacing(5)
                .frame(width: 350, height: 100)
            
            Spacer(minLength: 100)
            
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorPink2"), Color("ColorPink4")]), startPoint: .top, endPoint: .bottom).cornerRadius(10).ignoresSafeArea())
    }
}

// Total Pages
var totalPages = 4

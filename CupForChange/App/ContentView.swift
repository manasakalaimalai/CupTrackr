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
                ScreenView(image: "image1", title: "LEARN", description: "Learn about all things related to sustainable menstruation and take quizzes to test your knowledge!")
                    .transition(.scale)
            }
            //: 2ND VIEW
            if currentPage == 2 {
                ScreenView(image: "image2", title: "TRACK", description: "Use our flow tracker to determine when and how often to change your menstrual cup. Push notifications will be sent when the timer ends. ")
                    .transition(.scale)
            }
            //: 3RD VIEW
            if currentPage == 3 {
                ScreenView(image: "image3", title: "FIND", description: "Connect with other organizations working towards sustainable menstruation around you to buy menstrual cups, donate, and more!")
                    .transition(.scale)
            }
            //: 4TH VIEW
            if currentPage == 4 {
                ScreenView(image: "image4", title: "GET GUIDANCE", description: "Featuring a software that analyzes menstrual cup-related or general period problems and provides you with relevant guidance.")
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
                        .shadow(color: .white, radius: 7, x: -5, y: 10)
                    )
                    .shadow(color: .gray.opacity(0.5), radius: 7, x: -5, y: 10)

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
                        .fontWeight(.bold)
                        .kerning(1)
                        .foregroundColor(Color("ColorPink13").opacity(0.8))
                        .transition(.slide)
                        .shadow(color: .white, radius: 6, x: -5, y: 5)
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
                                .background(Color("pastel13").frame(width: UIScreen.main.bounds.width/8, height: UIScreen.main.bounds.width/9, alignment: .center).cornerRadius(20).opacity(0.15))
                                .shadow(color: .white, radius: 2, x: 0, y: 5)

                            Text("Back")
                                .font(.body)
                                .fontWeight(.bold)
                                .kerning(1.2)
                                .foregroundColor(Color("pastel13"))
                                .shadow(color: .white, radius: 5, x: -5, y: 5)
                        }
                    })
                }
                
                Spacer()
                
                Button(action: {
                    withAnimation(.easeInOut) {
                        isRepeatingOnboarding = true
                    }
                }, label: {
                    Text("Skip")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .kerning(1)
                        .foregroundColor(.black).opacity(0.25)
                        .background(Color("pastel13").frame(width: UIScreen.main.bounds.width/5, height: UIScreen.main.bounds.width/9, alignment: .center).cornerRadius(60).opacity(0.15))
                        .shadow(color: .white, radius: 1, x: -2, y: 5)

                }) //: END OF BUTTON
            } //: HSTACK
            .frame(width: UIScreen.main.bounds.width/1.2, height: 50)
            .padding(.top, 20)
            
            Spacer(minLength: 0)
            
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/3, alignment: .center)
                .padding(.vertical, UIScreen.main.bounds.height/80)
                .shadow(color: Color("pastel13"), radius: 15, x: -5, y: 10)
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .background(Color(.white).frame(width: UIScreen.main.bounds.width/1.2, height: UIScreen.main.bounds.height/260, alignment: .center).offset(y: 25).shadow(color: .black.opacity(0.2), radius: 10, x: -5, y: 10))
                .shadow(color: .black.opacity(0.2), radius: 10, x: -5, y: 10)
            Text(description)
                .font(.subheadline)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 15)
                .foregroundColor(Color("ColorPink13").opacity(0.7))
                .lineSpacing(5)
                .frame(width: 350, height: 100)
                .padding(.bottom, 20)
            
            Spacer(minLength: 100)
            
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color("pastel11"), Color("pastel1")]), startPoint: .top, endPoint: .bottom).cornerRadius(10).ignoresSafeArea())
    }
}

// Total Pages
var totalPages = 4

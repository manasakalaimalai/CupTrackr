//
//  HomeView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 18/06/21.
//

import SwiftUI

struct HomeView: View {
        
    var body: some View {
        ZStack {
            VStack {
//                NavigationBarView()
//                    .padding(.bottom)
//                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
//                    .background(LinearGradient(gradient: Gradient(colors: [Color("ColorPink1"), Color("ColorPink6")]), startPoint: .top, endPoint: .bottom))

                TabView {
                    EducationalView()
                        .tabItem {
                            Image(systemName: "book.circle")
                            Text("Learn")
                        }
                    FlowView()
                        .tabItem {
                            Image(systemName: "gauge")
                                .foregroundColor(.blue)
                            Text("Flow Tracker")
                        }
                    HelpView()
                        .tabItem {
                            Image(systemName: "bandage")
                            Text("Resources")
                        }
                    MapView()
                        .tabItem {
                            Image(systemName: "map")
                            Text("Locations")
                        }
                }
            } //: VSTACK
            .background(Color.white.ignoresSafeArea(.all, edges: .all))       
        } //: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct HomeView_Previews: PreviewProvider {
    static let learners: [Learner] = Bundle.main.decode("learn.json")
    static var previews: some View {
        HomeView()
    }
}

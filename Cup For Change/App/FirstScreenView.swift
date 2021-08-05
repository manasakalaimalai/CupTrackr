//
//  FirstScreenView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 24/06/21.
//

import SwiftUI

struct FirstScreenView: View {
// MARK: PROPERTIES
    
// MARK: BODY
    var body: some View {
       
        NavigationView {
            ScrollView (.vertical, showsIndicators: false, content: {
                    VStack {
                        
                        // SLIDER //
                        LearnerTabView()
                            .frame(width: 400, height: 250)
                            .padding(.bottom, 30)
                        
                        Text("Hello")
                    }
                    .navigationTitle("Welcome..")

            })
            .background(
                LinearGradient(gradient: Gradient(colors: [Color("ColorPink8"), Color("ColorPink4")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
            )
            .navigationTitle("Welcome")
        }
    }
}

struct FirstScreenView_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreenView()
    }
}

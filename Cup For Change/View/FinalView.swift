//
//  FinalView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 23/08/21.
//

import SwiftUI

struct FinalView: View {
    
    var score : Int
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                VStack {
                    Text("Great Job!")
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.bold)
                        .kerning(1.0)
                        .padding(30)
                    Image("trophy")
                        .resizable()
                        .scaledToFit()
                    Text("Score: \(score)/8")
                        .foregroundColor(Color("ColorPink7"))
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.horizontal, 30)
                        .padding(.bottom, 30)
                        .padding(.top, 30)

                }
                .frame(width: 300, height: 350)
                .background(Color("ColorPink5"))
                .cornerRadius(20)
                .shadow(color: Color("ColorPink7"), radius: 5, x: 7.0, y: 7.0)
                
                Spacer()
            }
            Spacer()
        }
        .background(Color.black.opacity(0.13).edgesIgnoringSafeArea(.all))
    }
}

struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalView(score: 1)
    }
}


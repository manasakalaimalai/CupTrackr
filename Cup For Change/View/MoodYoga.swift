//
//  MoodYoga.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 30/08/21.
//

import SwiftUI

struct YogaView: View {
    
    var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(sadmoods) { sadmood in
                            MoodYoga(sadmood: sadmood)
                        }
                        .frame(width: 170, height: 250)

                        // Extra space after last article
                        Spacer()
                        .padding()

                    } //: END OF HSTACK
                    .padding(.horizontal, 30)

                } //: END OF SCROLLVIEW
            .frame(width: UIScreen.main.bounds.width, height: 280)
        }
}

struct MoodYoga: View {
    var sadmood: Sad = Bundle.main.decode("resourcessad.json")

    var body: some View {
        ZStack {
            VStack {
                Text(sadmood.yoga)
                    .foregroundColor(Color.white)
                    .font(.title3)
                    .fontWeight(.heavy)
                    .kerning(1.0)
                    .padding(.top, 20)
                    .padding(.bottom, 30)
                    .padding(.horizontal, 10)
                Image(sadmood.yogaimage)
                    .resizable()
                    .scaledToFill()
                    .padding(.horizontal, 30)
                    .padding(.bottom, 10)
                    .opacity(0.8)
                    .frame(width: 200, height: 100)
            }
            .frame(width: 160, height: 220)
            .background(LinearGradient(gradient: Gradient(colors: [Color("pastel17"), Color("pastel11")]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(20)
        }
        .frame(width: 170, height: 230)
        .background(Color("pastel3"))
        .cornerRadius(20)
        .shadow(color: Color("pastel13"), radius: 5, x: 5.0, y: 5.0)

    }
}
struct MoodYoga_Previews: PreviewProvider {
    static var previews: some View {
        YogaView()
    }
}

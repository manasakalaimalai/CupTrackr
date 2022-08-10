//
//  TipsView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 17/09/21.
//

import SwiftUI

struct TipsView: View {

    var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(sadmoods) { sadmood in
                            Tips(sadmood: sadmood)
                        }
                        .frame(width: UIScreen.main.bounds.width/2.8, height: UIScreen.main.bounds.height/4.5)

                        // Extra space after last article
                        Spacer()
                        .padding()

                    } //: END OF HSTACK
                    .padding(.horizontal, 30)

                } //: END OF SCROLLVIEW
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/5.1)
        }
}

struct Tips: View {
    var sadmood: Sad = Bundle.main.decode("resourcessad.json")

    var body: some View {
        ZStack {
            VStack {
                Text(String(sadmood.id))
                    .foregroundColor(Color("ColorPink15"))
                    .font(.title)
                    .fontWeight(.black)
                    .kerning(1.0)
                    .padding(.top, 20)
                    .padding(.bottom, UIScreen.main.bounds.height/35)
                    .padding(.horizontal, 10)
                Text(sadmood.tips)
                    .fontWeight(.medium)
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("ColorPink16"))
                    .padding(.horizontal, 20)
                    .padding(.bottom, 30)
            }
            .frame(width: UIScreen.main.bounds.width/2.8, height: UIScreen.main.bounds.height/5)
            .background(LinearGradient(gradient: Gradient(colors: [Color("pastel6"), Color("pastel11")]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(20)
        }
        .frame(width: UIScreen.main.bounds.width/2.7, height: UIScreen.main.bounds.height/4.8)
        .background(Color("pastel13").opacity(0.5))
        .cornerRadius(20)
        .shadow(color: Color("pastel13").opacity(0.5), radius: 5, x: 5.0, y: 5.0)
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}

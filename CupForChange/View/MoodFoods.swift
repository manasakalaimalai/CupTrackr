//
//  MoodFoods.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 28/08/21.
//

import SwiftUI

struct FoodView: View {

    var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(sadmoods) { sadmood in
                            MoodFoods(sadmood: sadmood)
                        }
                        .frame(width: 170, height: 240)

                        // Extra space after last article
                        Spacer()
                        .padding()

                    } //: END OF HSTACK
                    .padding(.horizontal, 30)

                } //: END OF SCROLLVIEW
            .frame(width: UIScreen.main.bounds.width, height: 240)
        }
}

struct MoodFoods: View {
    var sadmood: Sad = Bundle.main.decode("resourcessad.json")

    var body: some View {
        ZStack {
            VStack {
                Text(sadmood.food)
                    .foregroundColor(Color.white)
                    .font(.subheadline)
                    .fontWeight(.heavy)
                    .kerning(1.0)
                    .padding(.top, 20)
                    .padding(.bottom, 30)
                    .padding(.horizontal, 10)
                Image(sadmood.foodimage)
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 30)
                    .padding(.bottom, 10)
                    .opacity(0.8)
                    .frame(width: 150, height: 100)
            }
            .frame(width: 160, height: 200)
            .background(LinearGradient(gradient: Gradient(colors: [Color("pastel6"), Color("pastel11").opacity(0.4)]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(20)
        }        
        .frame(width: 170, height: 210)
        .background(Color("pastel13").opacity(0.5))
        .cornerRadius(20)
        .shadow(color: Color("pastel13").opacity(0.4), radius: 5, x: 5.0, y: 5.0)

    }
}

struct MoodFoods_Previews: PreviewProvider {
    static var previews: some View {
        FoodView()
    }
}

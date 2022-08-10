//
//  SingleCardViewView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 01/08/21.
//

import SwiftUI



struct SingleCardView: View {
// MARK: PROPERTIES

    var quiz: Quiz = Bundle.main.decode("categoryquiz1.json")

    // MARK: BODY
    var body: some View {

        VStack {

            HStack {
                Spacer()
                Text(quiz.name)
                    .fontWeight(.black)
                    .kerning(1.0)
                    .foregroundColor(.white)
                    .font(.title3)
                    .fontWeight(.ultraLight)
                    .kerning(1.0)
                    .padding(.top,25)
                    .padding(.horizontal,30)
            }

            Spacer()

            HStack {
                Text(quiz.title)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .kerning(0.5)
                    .padding(.bottom, 20)
                    .padding(.horizontal, 25)

                Spacer()
                Text("")
            }
        }
        .frame(width: UIScreen.main.bounds.width/1.1, height: 140)
        .background(LinearGradient(gradient: Gradient(colors: [Color(quiz.color1), Color(quiz.color2), Color(quiz.color3)]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(20)
        .shadow(color: Color("ColorPink8"), radius: 5, x: 0.0, y: 5.0)
    }
}

struct SingleCardView_Previews: PreviewProvider {
    static var previews: some View {
        SingleCardView(quiz: quizzes[2])
    }
}

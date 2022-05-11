//
//  LearnerTabView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 28/06/21.
//

import SwiftUI

struct LearnerTabView: View {
    var body: some View {
        
        TabView {
            ForEach(learners) { learner in
                LearnerItemView(learner: learner)
            }
            .frame(width: UIScreen.main.bounds.width/1.03, height: UIScreen.main.bounds.height/4.5)

        } //: TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct Affirmation1View: View {
    var body: some View {
        Link(destination: URL(string: "https://www.youtube.com/watch?v=ISRwuIDU7z8")!, label: {
            Text("'Get Your Period' Affirmations")
                .foregroundColor(Color("pastel13"))
                .fontWeight(.bold)
                .frame(width: UIScreen.main.bounds.width/1.2, height: UIScreen.main.bounds.height/8)
                .background(LinearGradient(colors: [Color("pastel11"), Color("pastel12")], startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(20)
        })
    }
}
struct Affirmation2View: View {
    var body: some View {
        Link(destination: URL(string: "https://www.youtube.com/watch?v=U8-eO03sI-s")!, label: {
            Text("5 Minute Period Affirmations")
                .foregroundColor(Color("pastel13"))
                .fontWeight(.bold)
                .frame(width: UIScreen.main.bounds.width/1.2, height: UIScreen.main.bounds.height/8)
                .background(LinearGradient(colors: [Color("pastel11"), Color("pastel12")], startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(20)
        })
    }
}
struct LearnerTabView_Previews: PreviewProvider {
    static var previews: some View {
//        LearnerTabView()
//            .previewDevice("iPhone 11")
        Affirmation1View()
        Affirmation2View()
    }
}


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
                    .padding(.top, 10)
                    .scaledToFit()
            }
            .frame(width: UIScreen.main.bounds.width/1.03, height: 200)

        } //: TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct LearnerTabView_Previews: PreviewProvider {
    static var previews: some View {
        LearnerTabView()
            .previewDevice("iPhone 11")
    }
}

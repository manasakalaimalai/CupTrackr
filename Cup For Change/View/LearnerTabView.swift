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
                    .padding(.horizontal, 15)
                    .scaledToFit()
            }
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

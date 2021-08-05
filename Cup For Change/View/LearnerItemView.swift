//
//  LearnerItemView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 27/06/21.
//

import SwiftUI

struct LearnerItemView: View {
// MARK: PROPERTIES
    
    var learner: Learner
    
// MARK: BODY
    var body: some View {
        
        Image(learner.image)
            .resizable()
            .scaledToFill()
            .padding(.horizontal, 15)
            .background(LinearGradient(gradient: Gradient(colors: [Color("ColorPink4"), Color("ColorPink2")]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(30)
    
    }
}

struct LearnerItemView_Previews: PreviewProvider {
    static var previews: some View {
        LearnerItemView(learner: learners[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.black)
    }
}

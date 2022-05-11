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
        
        VStack {
            Text(learner.affirmation)
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .padding(.top, 15)
                .padding(.bottom, 5)
                .padding(.horizontal, 25)
                .multilineTextAlignment(.center)
            Text("____________________________")
                .foregroundColor(.white)
            Text(learner.name)
                .font(.body)
                .fontWeight(.heavy)
                .kerning(1)
                .foregroundColor(Color("pastel13"))
                .padding(.top, 5)
                .padding(.bottom, 15)
        }
        .frame(width: UIScreen.main.bounds.width/1.03, height: UIScreen.main.bounds.height/4.5)
        .background(LinearGradient(gradient: Gradient(colors: [Color("pastel6"), Color("pastel11")]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(30)
    }
}

struct LearnerItemView_Previews: PreviewProvider {
    static var previews: some View {
        LearnerItemView(learner: learners[2])
    }
}

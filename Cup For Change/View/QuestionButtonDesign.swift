//
//  QuestionButtonDesign.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 11/06/21.
//

import SwiftUI

struct QuestionButtonDesign: View {
    
// MARK: PROPERTIES


    
// MARK: BODY
    var body: some View {
        // Question 1 : Button 1
        HStack(spacing: 8) {
            Image(systemName: "arrow.right.circle")
                .foregroundColor(.white)
              .imageScale(.large)
            Text("")
                .foregroundColor(.white)
        }
        .frame(width: 320, height: 50, alignment: .center)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 1)
                .background(LinearGradient(gradient: Gradient(colors: [Color("ColorPink3"), Color("ColorPink2")]), startPoint: .top, endPoint: .bottom).cornerRadius(20))
        )
    }
}

struct QuestionButtonDesign_Previews: PreviewProvider {
    static var previews: some View {
        QuestionButtonDesign()
    }
}

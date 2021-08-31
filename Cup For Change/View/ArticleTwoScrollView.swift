//
//  ArticleTwoScrollView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 17/07/21.
//

import SwiftUI

struct ArticleTwoScrollView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(articlestwo) { articletwo in
                    GeometryReader { geo in
                        ArticleTwoCardView(articletwo: articletwo)
                            .rotation3DEffect(
                                Angle(degrees: (Double(geo.frame(in: .global).minX) - 40) / -15),
                                axis: (x: 0.0, y: 1.0, z: 0.0))
                    }
                    .frame(width: 200, height: 300)
                }
                
                // Extra space after last article
                Spacer()
                    .padding()
                
            } //: END OF HSTACK
            .padding(.horizontal, 30)
            
        } //: END OF SCROLLVIEW
        .frame(width: UIScreen.main.bounds.width, height: 300)
    }
}

struct ArticleTwoScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleTwoScrollView()
    }
}

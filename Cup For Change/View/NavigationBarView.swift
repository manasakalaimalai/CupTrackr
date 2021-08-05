//
//  NavigationBarView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 26/06/21.
//

import SwiftUI

struct NavigationBarView: View {
// MARK: PROPERTIES

    @State private var isAnimated: Bool = false

// MARK: BODY
    var body: some View {
        HStack {
            Spacer()
            Text("FLO")
                .font(.title)
                .fontWeight(.thin)
                .kerning(5)
                .foregroundColor(.white)
            
            Text("green".uppercased())
                .font(.title)
                .fontWeight(.thin)
                .kerning(5)
                .foregroundColor(.white)
            
            Spacer()
            
        } //: HSTACK
        .opacity(isAnimated ? 1 : 0)
        .offset(x: 0, y: isAnimated ? 0 : -40)
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.6)) {
                isAnimated.toggle()
            }
        })
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            
    }
}

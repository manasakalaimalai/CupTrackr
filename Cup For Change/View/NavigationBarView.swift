//
//  NavigationBarView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 26/06/21.
//

import SwiftUI

struct NavigationBarView: View {
// MARK: PROPERTIES


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
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()

    }
}

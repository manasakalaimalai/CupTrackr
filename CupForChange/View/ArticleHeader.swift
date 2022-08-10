//
//  ArticleHeader.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 09/08/21.
//

import SwiftUI

struct ArticleHeader: View {
// MARK: PROPERTIES
    var title : String
    @Binding var selectedTab : String
    var animation: Namespace.ID
    @State var index = 0
    
    
    var body: some View {
    // MARK: BODY
        
        Button(action: {
            
            withAnimation(.spring()) { selectedTab = title}
            
        }, label: {
             
            VStack {
                ZStack {
                        Text(title)
                            .fontWeight(.bold)
                            .foregroundColor(selectedTab == title ? Color("ColorPink16") : .white)
                            .font(.caption)
                            .frame(width: 100)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 5)
                            .background(selectedTab == title ? Color("pastel13").opacity(0.8) : Color("pastel13").opacity(0.5))
                            .clipShape(Capsule())
                }

                if selectedTab == title {
                    Capsule()
                        .fill(Color("pastel13").opacity(0.8))
                        .frame(width: 100, height: 3)
                        .matchedGeometryEffect(id: "Tab", in: animation)
                }
            }
        })
        
    }
}


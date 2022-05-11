//
//  MoodHeaderView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 27/08/21.
//

import SwiftUI

struct MoodHeaderView: View {
    var mood_title : String
    @Binding var selectedMood : String
    var animation: Namespace.ID
    @State var index = 0

    var body: some View {
        Button(action: {
            
            withAnimation(.spring()) { selectedMood = mood_title}
            
        }, label: {
             
            VStack {
                ZStack {
                    Spacer()
                    VStack {
                        Image(mood_title)
                            .resizable()
                            .scaledToFit()
                            .font(.system(size: 30))
                            .foregroundColor(selectedMood == mood_title ? Color("pastel4") : Color("pastel4"))
                            .padding(.vertical, 20)
                            .padding(.horizontal, 5)
                    }
                    Spacer()
                }
                if selectedMood == mood_title {
                    
                    Capsule()
                        .fill(Color("ColorPink7").opacity(0.8))
                        .frame(width: 50, height: 3)
                        .matchedGeometryEffect(id: "Tab", in: animation)
                }
            } 
        })
    }
}

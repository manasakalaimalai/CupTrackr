//
//  MoodMeditation.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 29/08/21.
//

import SwiftUI

struct MeditationView: View {
    
    @State private var isAnimated: Bool = false

    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 10), count: 2), spacing: 0, content: {
                ForEach(moodtrackers) { moodtracker in
                    MoodMeditation(moodtracker: moodtracker)
                }
                .frame(width: 180, height: 200)
                .padding()
                
                // Extra space after last article
                Spacer()
                    .padding()
                
            
        })
        .padding()
        .frame(width: UIScreen.main.bounds.width, height: 450)
    }
}

struct MoodMeditation: View {
    var moodtracker: Mood = Bundle.main.decode("resources.json")

    var body: some View {
        VStack {
            Image(moodtracker.image)
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 40)
                .padding(.bottom, 20)
                .padding(.top, 30)
                .opacity(0.8)
                .clipShape(Capsule())
                .background(Color(moodtracker.colorheader).frame(width: 300, height: 300, alignment: .top))
                .cornerRadius(15)
            Text(moodtracker.meditation)
                .foregroundColor(Color("ColorPink15"))
                .font(.body)
                .fontWeight(.heavy)
                .kerning(1.0)
                .padding(.top, 5)
                .padding(.horizontal, 16)
                .padding(.bottom, 5)

 
            Spacer()
        }
        .frame(width: 180, height: 200)
        .background(Color(moodtracker.colorheader))
        .cornerRadius(20)
        .shadow(color: Color("ColorPink8"), radius: 5, x: 5.0, y: 5.0)
        .padding(.bottom)
    }
}

struct MoodMeditation_Previews: PreviewProvider {
    static var previews: some View {
        MeditationView()
    }
}

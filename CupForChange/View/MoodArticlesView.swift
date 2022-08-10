//
//  MoodArticlesView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 28/08/21.
//

import SwiftUI


struct MoodArticles: View {
    
    var moodtracker: Mood = Bundle.main.decode("resources.json")
    
    var body: some View {
    
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack {
                Spacer(minLength: 0)
                
                VStack {
                    Rectangle()
                        .background(LinearGradient(gradient: Gradient(colors: [Color("pastel1"), Color("pastel11")]), startPoint: .leading, endPoint: .trailing).frame(width: UIScreen.main.bounds.width, height: 300))
                    Text(moodtracker.name)
                        .foregroundColor(Color("ColorPink15"))
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .kerning(1.0)
                        .background(LinearGradient(gradient: Gradient(colors: [Color("pastel1"), Color("pastel11")]), startPoint: .leading, endPoint: .trailing).frame(width: UIScreen.main.bounds.width, height: 250))
                        .padding(.top, 20)
                        .padding(.bottom, 20)
                        .padding(.horizontal, 20)
                    Text(moodtracker.reliefsubtitle)
                        .foregroundColor(Color("pastel13"))
                        .font(.body)
                        .fontWeight(.black)
                } // END OF VSTACK//
                .padding(.bottom, 100)
                
                HStack {
                    Image(systemName: "1.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color("pastel13").opacity(0.8))
                    Text(moodtracker.reliefmethods[0])
                        .font(.subheadline)
                        .foregroundColor(Color("ColorPink16"))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width/1.4)
                }
                .padding(.bottom, 20)
                HStack {
                    Image(systemName: "2.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color("pastel13").opacity(0.8))
                    Text(moodtracker.reliefmethods[1])
                        .font(.subheadline)
                        .foregroundColor(Color("ColorPink16"))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width/1.4)
                }
                .padding(.bottom, 20)
                HStack {
                    Image(systemName: "3.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color("pastel13").opacity(0.8))
                    Text(moodtracker.reliefmethods[2])
                        .font(.subheadline)
                        .foregroundColor(Color("ColorPink16"))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width/1.4)
                }
                .padding(.bottom, 20)
                HStack {
                    Image(systemName: "4.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color("pastel13").opacity(0.8))
                    Text(moodtracker.reliefmethods[3])
                        .font(.subheadline)
                        .foregroundColor(Color("ColorPink16"))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width/1.4)
                }
                .padding(.bottom, UIScreen.main.bounds.height/13)

                
                Spacer(minLength: 0)
                
            }
            .edgesIgnoringSafeArea(.all)
        })
    
    }
}
struct MoodArticlesView: View {
    
    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: UIScreen.main.bounds.width/20), count: 2), spacing: 0, content: {
                ForEach(moodtrackers) { moodtracker in
                    NavigationLink(
                        destination: MoodArticles(moodtracker: moodtracker),
                        label: {
                            MoodArticleCardView(moodtracker: moodtracker)
                        })
                }
                .frame(width: UIScreen.main.bounds.width/2.5, height: UIScreen.main.bounds.height/4.4)
                .padding()
                
                // Extra space after last article
                Spacer()
        })
        .padding()
        .frame(width: UIScreen.main.bounds.width, height: 460)
    }
}

struct MoodArticleCardView: View {
    var moodtracker: Mood = Bundle.main.decode("resources.json")

    // MARK: BODY
    var body: some View {
        
        VStack {
            Image(moodtracker.image)
                .resizable()
                .scaledToFill()
                .padding(.horizontal, 40)
                .padding(.bottom, 20)
                .padding(.top, 30)
                .opacity(0.8)
                .clipShape(Capsule())
                .background(Color(moodtracker.colorheader).frame(width: UIScreen.main.bounds.width/2.5, height: UIScreen.main.bounds.height/4.4, alignment: .top))
                .cornerRadius(15)
            Text(moodtracker.name)
                .foregroundColor(Color("ColorPink15"))
                .font(.body)
                .fontWeight(.heavy)
                .kerning(1.0)
                .padding(.top, 2)
                .padding(.horizontal, 13)
            Text(moodtracker.subtitle)
                .foregroundColor(Color("ColorPink16").opacity(0.4))
                .font(.caption)
                .fontWeight(.bold)
                .kerning(1.0)
                .padding(.top, 0.1)
                .padding(.horizontal, 10)
                .padding(.bottom, 5)

            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width/2.5, height: UIScreen.main.bounds.height/4.4)
        .background(LinearGradient(gradient: Gradient(colors: [Color(moodtracker.color1), Color(moodtracker.color2)]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(20)
        .shadow(color: Color("ColorPink8"), radius: 5, x: 5.0, y: 5.0)
        .padding(.bottom)
    }
}

struct MoodArticlesView_Previews: PreviewProvider {
    static var previews: some View {
        MoodArticles(moodtracker: moodtrackers[3])
    }
}

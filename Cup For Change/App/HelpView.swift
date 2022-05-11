//
//  HelpView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 18/06/21.
//

import SwiftUI
import AVKit

struct HelpView: View {
// MARK: PROPERTIES
    
    @State var password = ""
    @State var selectedMood = mood_type[0]
    @State var index = 0
    @Namespace var animation
    @State private var isAnimated: Bool = false
    @State private var isShowingMeditationView: Bool = false
    
    var body: some View {
    // MARK: BODY
        NavigationView {
            ZStack {
                if selectedMood == mood_type[0] {
                    Image("1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 900, height: 900, alignment: .center)
                    .edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        Text("Welcome \(password)")
                            .font(.system(size: 30))
                            .fontWeight(.heavy)
                            .foregroundColor(Color("ColorPink2"))
                            .padding(.horizontal, 10)
                        Text("How are you feeling today?")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(Color("ColorPink7"))
                            .padding(.vertical, 10)
                        
                        HStack(spacing: 0) {
                            ForEach(mood_type, id: \.self) { mood in
                                MoodHeaderView(mood_title: mood, selectedMood: $selectedMood, animation: animation)
                                    .padding(.horizontal, 10)
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width/1.5)
                        .padding(.horizontal, 40)
                        .padding(.top, 10)
                        
                    }
                    .padding(.bottom, UIScreen.main.bounds.height/3)
            }
                if selectedMood == mood_type[1] {
                        Image("backblue")
                        .resizable()
                        .scaledToFit()
                            .opacity(0.8)
                        .frame(width: 900, height: 900, alignment: .center)
                        .edgesIgnoringSafeArea(.all)
                        
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack {
                            Spacer(minLength: 0)
                            
                            Text("I feel great today!")
                                .font(.title)
                                .fontWeight(.black)
                                .foregroundColor(Color("pastel13"))
                                .padding(.top, UIScreen.main.bounds.height/11)

                            HStack(spacing: 0) {
                                ForEach(mood_top, id: \.self) { mood in
                                    MoodHeaderView(mood_title: mood, selectedMood: $selectedMood, animation: animation)
                                        .padding(.horizontal, 10)
                                }
                            }
                            .transition(.move(edge: .bottom))
                            .animation(.linear(duration: 0.4))                     .padding(.horizontal, 40)
                            .frame(width: UIScreen.main.bounds.width/1.3)
                            .padding(.horizontal, 20)
                            .padding(.bottom, 40)
                            
                            VStack {
                                HStack {
                                    Text("affirmations")
                                        .font(.title2)
                                        .foregroundColor(Color("ColorPink13").opacity(0.5))
                                        .fontWeight(.black)
                                        .padding(.bottom, 10)
                                }
                                LearnerTabView()
                                    .frame(height: UIScreen.main.bounds.height/4.01)
                            }
                            .padding(.bottom, 29)
                            
                            VStack {
                                HStack {
                                    Text("meditate")
                                        .font(.title2)
                                        .foregroundColor(Color("ColorPink13").opacity(0.5))
                                        .fontWeight(.black)                     .padding(.bottom, 30)
                                }
                                MeditationView()
                            }
                            .padding(.bottom, 29)
                            
                            VStack {
                                HStack {
                                    Text("video affirmations")
                                        .font(.title3)
                                        .foregroundColor(Color("ColorPink13").opacity(0.5))
                                        .fontWeight(.black)
                                        .padding(.bottom, 25)
                                }
                                Affirmation1View()
                                .padding(.bottom, 15)
                                Affirmation2View()
                            }
                            .padding(.bottom, 29)
                            
                            Spacer()
                        }
                        .padding(.top, 60)
                        .padding(.bottom, UIScreen.main.bounds.height/6)
                    })
                }
                if selectedMood == mood_type[2] {
                    Image("backblue")
                    .resizable()
                    .scaledToFit()
                        .opacity(0.8)
                    .frame(width: 900, height: 900, alignment: .center)
                    .edgesIgnoringSafeArea(.all)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack {
                            Spacer(minLength: 0)
                            
                            Text("I feel alright today!")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(Color("pastel13"))
                                .padding(.top, UIScreen.main.bounds.height/11)

                            HStack(spacing: 0) {
                                ForEach(mood_top, id: \.self) { mood in
                                    
                                    MoodHeaderView(mood_title: mood, selectedMood: $selectedMood, animation: animation)
                                        .padding(.horizontal, 10)
                                }
                            }
                            .transition(.move(edge: .bottom))
                            .animation(.linear(duration: 0.4))                        .padding(.horizontal, 40)
                            .padding(.bottom, 40)
                            .frame(width: UIScreen.main.bounds.width/1.3)
                            .padding(.horizontal, 20)
                            
                            VStack {
                                HStack {
                                    Spacer()
                                    Text("tips for a pain-free period")
                                        .foregroundColor(Color("ColorPink16").opacity(0.6))
                                        .fontWeight(.bold)
                                        .padding(.bottom, 30)
                                    Spacer()
                                }
                                TipsView()
                            }
                            
                            VStack {
                                HStack {
                                    Spacer()
                                    Text("symptoms you might be having")
                                        .foregroundColor(Color("ColorPink16").opacity(0.6))
                                        .fontWeight(.bold)
                                        .padding(.bottom, 10)
                                        .padding(.top, 50)
                                    Spacer()
                                }
                                MoodArticlesView()
                            }

                            Spacer()
                        }
                        .padding(.top, 60)
                        .padding(.bottom, UIScreen.main.bounds.height/6)
                    })
                }
                if selectedMood == mood_type[3] {
                    Image("backblue")
                    .resizable()
                    .scaledToFit()
                        .opacity(0.8)
                    .frame(width: 900, height: 900, alignment: .center)
                    .edgesIgnoringSafeArea(.all)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack {
                            Spacer(minLength: 0)
                            
                            Text("I feel miserable today!")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(Color("pastel13"))
                                .padding(.top, UIScreen.main.bounds.height/11)

                            HStack(spacing: 0) {
                                ForEach(mood_top, id: \.self) { mood in
                                    
                                    MoodHeaderView(mood_title: mood, selectedMood: $selectedMood, animation: animation)
                                        .padding(.horizontal, 10)
                                }
                            }
                            .transition(.move(edge: .bottom))
                            .animation(.linear(duration: 0.4))                        .padding(.horizontal, 40)
                            .padding(.bottom, 40)
                            .frame(width: UIScreen.main.bounds.width/1.3)
                            .padding(.horizontal, 20)
                            
                            VStack {
                                HStack {
                                    Spacer()
                                    Text("symptoms you might be having")
                                        .font(.body)
                                        .foregroundColor(Color("ColorPink16").opacity(0.6))
                                        .fontWeight(.bold)
                                        .padding(.bottom, 10)
                                    Spacer()
                                }
                                MoodArticlesView()
                            }
                                                        
                            VStack {
                                HStack {
                                    Spacer()
                                    Text("foods to eat during periods")
                                        .font(.body)
                                        .foregroundColor(Color("ColorPink16").opacity(0.6))
                                        .fontWeight(.black)
                                        .padding(.top, 30)
                                    Spacer()
                                }
                                FoodView()
                            }
                                                        
                            VStack {
                                HStack {
                                    Spacer()
                                    Text("yoga positions to improve cramps")
                                        .font(.body)
                                        .foregroundColor(Color("ColorPink16").opacity(0.6))
                                        .fontWeight(.black)
                                        .padding(.top, 20)
                                    Spacer()
                                }
                                YogaView()
                            }
                            
                            Spacer()
                            
                        }
                        .padding(.top, 60)
                        .padding(.bottom, UIScreen.main.bounds.height/6)

                    })
                }
            }
            .navigationBarTitle("resources")
            .navigationBarHidden(true)
        }
//        .sheet(isPresented: $isShowingMeditationView) {
//            MusicPlayer()
//        }
    }
}

var mood_type = ["rightarrow", "sunmaxfill", "clouddrizzle", "cloudbolt"]
var mood_top = ["sunmaxfill", "clouddrizzle", "cloudbolt"]


//struct MusicPlayer {
//
//    @State var data : Data = .init(count: 0)
//    @State var title = ""
//
//    var body: some View {
//
//        VStack(spacing: 20) {
//            Image(uiImage: self.data.count == 0 ? UIImage(named: "girlreading")! : UIImage(data: self.data)!)
//                .resizable()
//                .frame(width: self.data.count == 0 ? 250 : nil, height: 250)
//                .cornerRadius(15)
//            Text(self.title).font(.title).padding(.top)
//
//            ZStack(alignment: .leading) {
//                Capsule().fill(Color.black.opacity(0.88)).frame(height: 8)
//                Capsule().fill(Color.red).frame(width: 200, height: 8)
//
//            }
//            .padding(.top)
//
//            HStack {
//                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
//                    Image(systemName: "forward.fill")
//                })
//            }
//        }
//        .padding()
//        .onAppear {
//            self.getData()
//        }
//
//    }
//
//    func getData() {
//        let url = Bundle.main.path(forResource: "wmyb", ofType: "mp3")
//        let asset = AVAsset(url: URL(fileURLWithPath: url!))
//
//        for i in asset.commonMetadata {
//            if i.commonKey?.rawValue == "artwork" {
//                let data = i.value as! Data
//                self.data = data
//            }
//            if i.commonKey?.rawValue == "title" {
//                let title = i.value as! String
//                self.title = title
//            }
//
//        }
//    }
//}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}

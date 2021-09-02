//
//  FlowView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 18/06/21.
//

import SwiftUI


struct FlowView: View {
// MARK: PROPERTIES
    
    @ObservedObject var timerManager = TimerManager()
    @State var selectedPickerIndex = 0
    @State var cardShown = false
    @State var cardDismissal = false
    @State var password = ""
    let availableHours = Array(2...12)

var body: some View {
// MARK: BODY
    
    NavigationView() {
        ZStack {
                VStack {
                    HStack {
                        Spacer()
    //                    Button(action: {
    //                        withAnimation {
    //                            alertView()
    //                        }
    //                    }, label: {
    //                        Text("login")
    //                        .font(.body)
    //                        .fontWeight(.bold)
    //                        .foregroundColor(Color("pastel13"))
    //                    })

                        NavigationLink(
                            destination: CupQuiz(),
                            label: {
                                Text("Cup Quiz")
                                .font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(Color("pastel13"))
                                    .background(Color("pastel11").frame(width: 100, height: 30).cornerRadius(30).opacity(0.5))
                            })

                        Spacer(minLength: UIScreen.main.bounds.width/3)
                        
                        Button(action: {
                            withAnimation {
                                cardShown.toggle()
                                cardDismissal.toggle()
                            }
                        }, label: {
                            Text("how to")
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(Color("pastel13"))
                            Image(systemName: "info.circle.fill")
                                .foregroundColor(Color("pastel13"))
                        })
                        Spacer()
                    }
                    .padding(.top, 20)
                    .padding(.horizontal, 20)


                    Text("welcome \(password)...")
                    .font(.title3)
                    .fontWeight(.bold)
                        .foregroundColor(Color("ColorPink7").opacity(0.6))
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                    
                    HStack {
                        Spacer()
                        Text("your cup tracker")
                            .fontWeight(.heavy)
                            .foregroundColor(Color("ColorPink7"))
                            .font(.title)
                        Spacer()
                    }
                    .padding(.top, 10)
                    .padding(.horizontal, 20)
                        
                    Text(secondstoHoursandMinsandSecs(seconds: timerManager.secondsLeft))
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .padding(.top, 50)
                            .foregroundColor(.black).opacity(0.6)
                        
                        Image("MenstrualCup")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200)
                            .opacity(0.9)
                            .padding(.bottom, 20)
                            .padding(.top, 40)

                        Image(systemName: timerManager.timerMode == .running ? "pause.circle.fill" : "play.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50)
                            .foregroundColor(Color("ColorPink7"))
                            .onTapGesture(perform: {
                                if self.timerManager.timerMode == .initial {
                                    self.timerManager.setTimerLength(hours: self.availableHours[self.selectedPickerIndex]*3600)
                                }
                                self.timerManager.timerMode == .running ? self.timerManager.pause() : self.timerManager.start()
                            })
                        if timerManager.timerMode == .paused {
                            Image(systemName: "gobackward")
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .padding(.top, 40)
                                .onTapGesture(perform: {
                                    self.timerManager.reset()
                                })
                        }
                        if timerManager.timerMode == .initial {
                            Picker(selection: $selectedPickerIndex, label: Text("")) {
                                ForEach(0 ..< availableHours.count) {
                                    Text("\(self.availableHours[$0]) hours")
                                        .foregroundColor(.black).opacity(0.7)
                                }
                            }
                            .labelsHidden()
                        }
                    Spacer()
                }
                BottomCard(cardShown: $cardShown, cardDismissal: $cardDismissal, height: UIScreen.main.bounds.height/2.2) {
                    CardContent()
                        .padding()
                }
                .animation(.default)
                
            }
        .navigationBarTitle("Tracker")
        .navigationBarHidden(true)
            
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("ColorPink15"), Color("pastel17")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
    )
    }
}
    func alertView(){
        let alert = UIAlertController(title: "Login", message: "Enter Your First Name", preferredStyle: .alert)
        
        alert.addTextField { (pass) in
            pass.isSecureTextEntry = true
            pass.placeholder = "First Name"
        }
        
        let login = UIAlertAction(title: "Login", style: .default) { (_) in
            password = alert.textFields![0].text!
        }
        let cancel = UIAlertAction(title: "Cancel", style: .default) { (_) in
        
        }
        
        alert.addAction(cancel)
        alert.addAction(login)
        
        UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true, completion: {
        })
    }
}

struct CardContent: View {
    
    var body: some View {
        Text("How To Use This Tracker")
            .font(.subheadline)
            .fontWeight(.black)
            .foregroundColor(Color("ColorPink7"))
        Text("The timer allows you to choose your own custom reminders for when you wish to change your cup. We recommend taking the Cup Quiz to know how often you should change.")
            .font(.caption)
            .fontWeight(.medium)
            .padding(.horizontal)
            .foregroundColor(Color("ColorPink16"))
    }
}

struct BottomCard<Content: View>: View {
    
    let content: Content
    @Binding var cardShown : Bool
    @Binding var cardDismissal : Bool
    let height : CGFloat
    
    init(cardShown: Binding<Bool>, cardDismissal: Binding<Bool>, height: CGFloat, @ViewBuilder content: () -> Content) {
        self.height = height
        _cardShown = cardShown
        _cardDismissal = cardDismissal
        self.content = content()
    }
    
    var body: some View {
        ZStack {
            GeometryReader { _ in
                EmptyView()
            }
            .background(Color.gray.opacity(0.5))
            .opacity(cardShown ? 1 : 0)
            .animation(Animation.easeIn)
            .onTapGesture {
                cardDismissal.toggle()
                DispatchQueue.main.asyncAfter(deadline: .now()+0.25) {
                    cardShown.toggle()
                }
            }
            
            VStack {
                Spacer()
                VStack {
                    content
                    
                    Button(action: {
                        cardDismissal.toggle()
                        DispatchQueue.main.asyncAfter(deadline: .now()+0.25) {
                            cardShown.toggle()
                        }
                    }, label: {
                        Text("Dismiss")
                            .font(.caption)
                            .foregroundColor(.white)
                            .frame(width: 80, height: 30)
                            .background(Color("pastel13"))
                            .cornerRadius(15)
                    })
                    .padding()
                }
                .background(Color.white)
                .offset(y: cardShown && cardDismissal ? 0 : 1000)
                .frame(height: height)
                .animation(Animation.default.delay(0.2))
                .padding(30)
            }

        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct FlowView_Previews: PreviewProvider {
    static var previews: some View {
        FlowView()
    }
}

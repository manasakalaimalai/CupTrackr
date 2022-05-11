//
//  FlowView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 18/06/21.
//

import SwiftUI
import UserNotifications


struct FlowView: View {
// MARK: PROPERTIES
    
    @ObservedObject var timerManager = TimerManager()
    @State var selectedPickerIndex = 0
    @State var cardShown = false
    @State var cardDismissal = false
    @State var password = ""
    let availableHours = Array(1...12)

var body: some View {
// MARK: BODY
    NavigationView() {
        ZStack {
            VStack {
                HStack {
                        Spacer()
                        NavigationLink(
                            destination: CupQuiz(),
                            label: {
                                Text("Cup Quiz")
                                .font(.body)
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                                .background(Color("pastel2").frame(width: UIScreen.main.bounds.width/3.8, height: UIScreen.main.bounds.height/20).cornerRadius(30).opacity(0.5))
                                .shadow(color: .black.opacity(0.26), radius: 8, x: -5, y: 5)
                            })

                        Spacer(minLength: UIScreen.main.bounds.width/3)

                        Button(action: {
                            withAnimation {
                                cardShown.toggle()
                                cardDismissal.toggle()
                            }
                        }, label: {
                            
                            Text("How To")
                            .font(.body)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            Image(systemName: "info.circle.fill")
                                .foregroundColor(.white)
                        })
                        .background(Color("pastel2").frame(width: UIScreen.main.bounds.width/3.2, height: UIScreen.main.bounds.height/20).cornerRadius(30).opacity(0.5))
                        .shadow(color: .black.opacity(0.26), radius: 8, x: -5, y: 5)

                        Spacer()
                    }
                .padding(.horizontal, 20)
                .padding(.bottom, 20)

                HStack {
                    Spacer()
                    Text("cup tracker")
                        .fontWeight(.heavy)
                        .font(.largeTitle)
                        .foregroundColor(Color("ColorPink16").opacity(0.7))
                        .shadow(color: .white, radius: 10, x: -5, y: 5)
                    Spacer()
                }
                .padding(.top, 20)
                .padding(.horizontal, 20)
                        
                VStack {
                    Text(secondstoHoursandMinsandSecs(seconds: timerManager.secondsLeft))
                            .font(.system(size: UIScreen.main.bounds.width/12))
                            .fontWeight(.medium)
                            .foregroundColor(Color("ColorPink16").opacity(0.4))
                            .background(LinearGradient(colors: [Color("pastel13"), Color("pastel4")], startPoint: .top, endPoint: .bottom).frame(width: UIScreen.main.bounds.width/1.6, height: UIScreen.main.bounds.height/13).cornerRadius(50).opacity(0.3).shadow(color: .black.opacity(0.5), radius: 5, x: 5, y: 5))
                            .padding(.top, 20)

                    Image("MenstrualCup")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width/3.6)
                        .opacity(0.9)
                        .padding(.bottom, 30)
                        .padding(.top, 30)

                    Image(systemName: timerManager.timerMode == .running ? "pause.circle.fill" : "play.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .foregroundColor(Color("pastel3"))
                        .onTapGesture(perform: {
                            if self.timerManager.timerMode == .initial {
                                self.timerManager.setTimerLength(hours: self.availableHours[self.selectedPickerIndex]*3600)
                            }
                            self.timerManager.timerMode == .running ? self.timerManager.pause() : self.timerManager.start()
                        })
                    Text("select hours below")
                        .font(.footnote)
                        .kerning(1)
                        .fontWeight(.bold)
                        .foregroundColor(Color("pastel13"))
                        .padding(.top, 10)
                        .padding(.bottom, 20)
                    
                        if timerManager.timerMode == .paused {
                            Image(systemName: "gobackward")
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .font(.title3)
                                .padding(.top, 20)
                                .onTapGesture(perform: {
                                    self.timerManager.reset()
                                })
                        }
                        if timerManager.timerMode == .initial {
                            Picker(selection: $selectedPickerIndex, label: Text("")) {
                                ForEach(1 ..< availableHours.count) {
                                    Text("\(self.availableHours[$0]) Hours")
                                }
                            }
                            .background(LinearGradient(colors: [ Color("pastel1"), Color("pastel2")], startPoint: .top, endPoint: .bottom).frame(width: UIScreen.main.bounds.width/3, height: UIScreen.main.bounds.height/20).cornerRadius(50).opacity(0.3).shadow(color: .black.opacity(0.5), radius: 5, x: 5, y: 5))
                            .labelsHidden()
                        }
                }
                    
                Spacer()
            } // END OF VSTACK
            BottomCard(cardShown: $cardShown, cardDismissal: $cardDismissal, height: UIScreen.main.bounds.height/2.2) {
                CardContent()
                .padding()
            }
            .animation(.default)
            .edgesIgnoringSafeArea(.all)
            .onAppear(perform: {
                UNUserNotificationCenter.current().requestAuthorization(options: [.badge, .sound, .alert]) { (_,_) in }})
        } // END OF ZSTACK
        
    } // END OF NAVIGATIONVIEW
    .navigationBarTitle("Tracker")
    .navigationBarHidden(true)
    .background(
        LinearGradient(gradient: Gradient(colors: [Color("ColorPink15"), Color("pastel17")]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all))

}
    func Notify() {
        
        let content = UNMutableNotificationContent()
        content.title = "Message"
        content.body = "Time To Change Your Cup!"
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
        
        let req = UNNotificationRequest(identifier: "MSG", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(req, withCompletionHandler: nil)
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
        HStack {
            Text("How To Use This Tracker")
                .font(.subheadline)
                .fontWeight(.black)
            .foregroundColor(Color("ColorPink16").opacity(0.7))
            Image(systemName: "info.circle.fill")
                .foregroundColor(Color("ColorPink16").opacity(0.7))
        }
        Text("The timer allows you to choose your own custom reminders for when you wish to change your cup. We recommend taking the Cup Quiz to know how often you should change.")
            .font(.footnote)
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
                            .fontWeight(.heavy)
                            .frame(width: 80, height: 30)
                            .background(Color("pastel3"))
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

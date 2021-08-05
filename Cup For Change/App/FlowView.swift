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
    
    @State var showInfo = false
    
    let availableHours = Array(2...12)

var body: some View {
// MARK: BODY
    
    ScrollView(.vertical, showsIndicators: false, content: {
            VStack {
                HStack {
                    Text("Menstrual Cup Tracker")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(.system(size: 27))
                    Spacer()
                    
                    // "MORE INFO" BUTTON
                    Button(action: {
                        withAnimation {
                            
                            showInfo.toggle()
                        }
                        
                    }, label: {
                        
                        Image(systemName: "info.circle.fill")
                            .foregroundColor(.white)
                    })

                }
                .padding(.top, 60)
                .padding(.horizontal, 20)

                
                Text(secondstoHoursandMinsandSecs(seconds: timerManager.secondsLeft))
                    .font(.system(size: 40))
                    .fontWeight(.medium)
                    .padding(.top, 70)
                    .foregroundColor(.black).opacity(0.6)
                
                Image("MenstrualCup")
                    .scaledToFit()
                    .padding(.bottom, 20)
                    
                Image(systemName: timerManager.timerMode == .running ? "pause.circle.fill" : "play.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color("ColorPink8"))
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
            }
            if showInfo {
                HowToUse(show: $showInfo)
            }
    })
    .background(
        LinearGradient(gradient: Gradient(colors: [Color("ColorPink14"), Color("Color1")]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
    )
}
}



struct FlowView_Previews: PreviewProvider {
    static var previews: some View {
        FlowView()
    }
}

struct BlurView : UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemThinMaterial))
        
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
         
    }
}

struct HowToUse : View {
    
    @Binding var show : Bool
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
            
            VStack(spacing: 25) {
                
                Text("How to Use This Tracker")
                
                Button(action: {
                    
                }, label: {
                    Text("Back to Home")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                })
                
            } // END OF VSTACK
            .padding(.top, 25)
            .padding(.horizontal, 30)
            .background(BlurView())
            .cornerRadius(25)
            
            Button(action: {
                
                withAnimation {
                    show.toggle()
                }
                
            }, label: {
                
                Image(systemName: "xmark.circle")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.purple)
            })
            .padding()
            
        }
        .frame(minWidth: .infinity, maxHeight: .infinity)
        .background(Color.primary.opacity(0.35))
        
    }
    
}

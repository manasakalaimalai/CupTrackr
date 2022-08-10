//
//  CupQuizFinalView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 24/08/21.
//

import SwiftUI

struct CupQuizFinalView: View {
   
    var light : Int
    var medium : Int
    var heavy : Int
    var abnormal : Int
    
    @State var scale: CGFloat = 1.2
    
    var body: some View {
        VStack {
            Image("MenstrualCup")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .padding(.bottom, 20)
                .padding(.top, 30)

            HStack {
                Spacer()
                Text("The recommended time to change your cup is every:")
                    .font(.body)
                    .kerning(1.1)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                Spacer()
            }
            if self.light == 3 {
                Text("10-12 hours")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("ColorPink12"))
                    .padding(.top, 30)
                    .scaleEffect(scale)
                    .animateForever(autoreverses: true) { scale = 1.0 }
                
                Text("Since your period flow is consistently light, you would not need to change your cup more than twice a day. Light periods can be caused due to pregnancy, PCOS, or birth control.")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("ColorPink12"))
                    .padding(.horizontal, 30)
                    .padding(.top, 30)
            }
            if self.medium == 3 {
                Text("8-10 hours")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("ColorPink12"))
                    .padding(.top, 30)
                    .scaleEffect(scale)
                    .animateForever(autoreverses: true) { scale = 1.0 }
                
                Text("Since your period flow is consistently normal, you would not need to change your cup more than twice a day. Check your cup after the first 8 hours and regulate how often you change from there. You may need to change every 8 hours for the first couple days of your period and every 10 towards the last few days.")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("ColorPink12"))
                    .padding(.horizontal, 30)
                    .padding(.top, 30)
            }
            if self.heavy == 3 {
                Text("6-8 hours")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("ColorPink12"))
                    .padding(.top, 30)
                    .scaleEffect(scale)
                    .animateForever(autoreverses: true) { scale = 1.0 }
                
                Text("Since your period flow is consistently heavy, you will need to change your cup 3-4 times a day. Check your cup after the first 6 hours and regulate how often you change from there. You may need to change every 6 hours for the first couple days of your period and every 8 towards the last few days.")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("ColorPink12"))
                    .padding(.horizontal, 30)
                    .padding(.top, 30)
            }
            if self.abnormal == 3 {
                Text("6-10 hours")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("ColorPink12"))
                    .padding(.top, 30)
                    .scaleEffect(scale)
                    .animateForever(autoreverses: true) { scale = 1.0 }
                Text("Since your period flow is abnormal, you would need to change your cup 2-4 times a day depending on your flow that month. If you observe your flow to be light, you can change your cup every 8-10 hours; and for heavy flow, change every 6-8 hours. Abnormal periods can be caused due to excessive levels of stress, hormonal birth control, medications, or major weight loss/gain.")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("ColorPink12"))
                    .padding(.horizontal, 30)
                    .padding(.top, 30)
            }
            if self.light != 3 && self.medium != 3 && self.heavy != 3 && self.abnormal != 3 {
                Text("8-10 hours")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("ColorPink12"))
                    .padding(.top, 30)
                    .scaleEffect(scale)
                    .animateForever(autoreverses: true) { scale = 1.0 }
                Text("For the first cycle using your cup, check your cup after the first 8 hours and do so for several times afterwards to monitor your flow. Once you get the hang of it, you can easily regulate how often you should change your cup. Normally, you will need to change every 8 hours for the first couple days of your period and every 10 towards the last few days.")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("ColorPink12"))
                    .padding(.horizontal, 30)
                    .padding(.top, 30)
            }
            
            Spacer()
            
        }
        .frame(width: UIScreen.main.bounds.width/1.3, height: UIScreen.main.bounds.height/1.7)
        .background(Color("ColorPink5"))
        .cornerRadius(20)
        .shadow(color: Color("ColorPink7"), radius: 5, x: 7.0, y: 7.0)
        .padding(.bottom, 40)
    }
}

struct CupQuizFinalView_Previews: PreviewProvider {
    static var previews: some View {
        CupQuizFinalView(light: 1, medium: 2, heavy: 2, abnormal: 3)
    }
}

extension View {
    func animateForever(using animation: Animation = .easeInOut(duration: 1), autoreverses: Bool = false, _ action: @escaping () -> Void) -> some View {
        let repeated = animation.repeatForever(autoreverses: autoreverses)

        return onAppear {
            withAnimation(repeated) {
                action()
            }
        }
    }
}


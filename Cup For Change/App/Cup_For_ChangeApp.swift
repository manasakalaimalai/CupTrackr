//
//  Cup_For_ChangeApp.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 10/06/21.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    @AppStorage("isQuestion2") var isQuestion2: Bool = true
    @AppStorage("isQuestion3") var isQuestion3: Bool = true
    @AppStorage("isQuestion4") var isQuestion4: Bool = true

    
  
  var body: some Scene {
    WindowGroup {
        if isOnboarding {
        OnboardingView()
        } else {
        ContentView()
        }
        
    }
    WindowGroup {
    if isQuestion2 {
        QuestionView2()
    }
        
    }
}

}

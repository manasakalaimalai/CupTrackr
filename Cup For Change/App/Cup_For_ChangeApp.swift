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


    
  
  var body: some Scene {
    WindowGroup {
        if isOnboarding {
        OnboardingView()
        } else {
        ContentView()
        }
        
    }
}

}

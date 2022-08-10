//
//  Cup_For_ChangeApp.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 10/06/21.
//

import SwiftUI
import Firebase
import FirebaseCore

@main
struct CupForChangeApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate 
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
  
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }

}



// initializing Firebase

class AppDelegate : NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()
        return true
    }
}


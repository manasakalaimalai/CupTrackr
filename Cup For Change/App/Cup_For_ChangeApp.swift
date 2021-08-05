//
//  Cup_For_ChangeApp.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 10/06/21.
//

import SwiftUI
import Firebase

@main
struct CupForChangeApp: App {
    
    init() {
     FirebaseApp.configure()
    }
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
  
  var body: some Scene {
    WindowGroup {
        
        ContentView()
   
    }
}

}

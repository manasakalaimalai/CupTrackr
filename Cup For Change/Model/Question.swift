//
//  Question.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 11/06/21.
//

import SwiftUI

struct Question: Identifiable {
    var id = UUID()
    
    var questionNumber: String
    
    var question: String
    
    var questionButton1Text: String
    var questionButton2Text: String
    var questionButton3Text: String
}

//
//  Question.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 28/07/21.
//

import SwiftUI
import FirebaseFirestoreSwift


struct Question: Identifiable,Codable {
    @DocumentID var id: String?
    var question: String?
    var answer: String?
    var choiceA: String?
    var choiceB: String?
    var choiceC: String?
    var choiceD: String?

    // for checking...
    
    var isSubmitted = false
    var completed = false
    
    enum CodingKeys: String,CodingKey {
        case question
        case answer
        case optionA = "a"
        case optionB = "b"
        case optionC = "c"
        case optionD = "d"
    }
}

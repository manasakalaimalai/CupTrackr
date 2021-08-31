//
//  QuizQuestionModel.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 24/08/21.
//

import Combine
import Foundation
import CoreGraphics

struct QuizQuestion: Codable, Identifiable {
    var id: Int
    var question1: String?
    var question2: String?
    var question3: String?
    var question4: String?
    var question5: String?
    var question6: String?
    var question7: String?
    var question8: String?
    var answers1: [String]
    var answers2: [String]
    var answers3: [String]
    var answers4: [String]
    var answers5: [String]
    var answers6: [String]
    var answers7: [String]
    var answers8: [String]
    var correct: [String]
}


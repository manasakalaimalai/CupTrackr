//
//  QuizModel.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 07/08/21.
//

import Combine
import Foundation
import CoreGraphics

struct Quiz: Codable, Identifiable {
    var id: Int
    var name: String
    var title: String
    var question: [String]
    var answers1: [String]
    var answers2: [String]
    var answers3: [String]
    var answers4: [String]
    var correct: [Int]
    var color1: String
    var color2: String
    var color3: String
}

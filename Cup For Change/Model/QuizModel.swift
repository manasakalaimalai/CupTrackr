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
}

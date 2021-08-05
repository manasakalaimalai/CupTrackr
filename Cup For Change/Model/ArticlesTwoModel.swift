//
//  ArticlesTwoModel.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 17/07/21.
//

import Combine
import Foundation
import CoreGraphics

struct ArticleTwo: Codable, Identifiable {
    var id: Int
    var title: String
    var image: String
    var color1: String
    var color2: String
}

//
//  MoodModel.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 27/08/21.
//

import Combine
import Foundation
import CoreGraphics

struct Mood: Codable, Identifiable {
    var id: Int
    var mood: String
    var name: String
    var subtitle: String
    var image: String
    var color1: String
    var color2: String
    var colorheader: String
    var meditation: String
    var reliefmethods: [String]
    var reliefsubtitle: String
}

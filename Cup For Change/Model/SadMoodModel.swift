//
//  SadMoodModel.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 29/08/21.
//

import Combine
import Foundation
import CoreGraphics

struct Sad: Codable, Identifiable {
    var id: Int
    var mood: String
    var name: String
    var subtitle: String
    var foodimage: String
    var yogaimage: String
    var color1: String
    var color2: String
    var colorheader: String
    var food: String
    var yoga: String
}

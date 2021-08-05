//
//  ArticlesModel.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 30/06/21.
//

import Combine
import Foundation
import CoreGraphics

struct Article: Codable, Identifiable {
    var id: Int
    var name: String
    var image: String
    var color1: String
    var color2: String
}

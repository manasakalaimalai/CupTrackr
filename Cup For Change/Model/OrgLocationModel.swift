//
//  OrgLocationModel.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 19/06/21.
//

import Foundation
import MapKit

struct SustainableOrgLocations: Codable, Identifiable {
    let id: String
    let name: String
    let place: String
    let description: String
    let websitelink: String
    let image: String
    let latitude: Double
    let longitude: Double
    let link: String
    let number: String
    
    // Computed Map Property
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
}




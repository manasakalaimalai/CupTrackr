//
//  OrgLocationModel.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 19/06/21.
//

import Foundation
import MapKit

struct NationalParkLocation: Codable, Identifiable {
    let id: String
    let name: String
    let latitude: Double
    let longitude: Double
    let place: String
    
    // Computed Map Property
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
}




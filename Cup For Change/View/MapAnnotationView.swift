//
//  MapAnnotationView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 19/06/21.
//

import SwiftUI


struct MapAnnotationView: View {
    
    var location: SustainableOrgLocations
        
    var body: some View {
            VStack {
                LocationPinView(location: location)
                Text(location.name)
                    .font(.footnote)
                    .fontWeight(.medium)
                Text(location.place)
                    .font(.caption)
            } //: VSTACK
    }
}

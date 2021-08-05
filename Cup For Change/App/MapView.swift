//
//  Created by Robert Petras
//  SwiftUI Masterclass ♥ Better Apps. Less Code.
//  https://swiftuimasterclass.com
//

import SwiftUI
import MapKit

struct MapView: View {
  // MARK: - PROPERTIES
  
  @State private var region: MKCoordinateRegion = {
    var mapCoordinates = CLLocationCoordinate2D(latitude: 21.793542, longitude: 79.032992)
    var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 20, longitudeDelta: 20)
    var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
    
    return mapRegion
  }()
  
  let locations: [SustainableOrgLocations] = Bundle.main.decode("location.json")
  
  // MARK: - BODY
  
  var body: some View {
    VStack {
        Text("Find sustainable menstruation organizations around you! Select the pink pin to learn more. ")
            .kerning(1.1)
            .fontWeight(.medium)
            .padding(.horizontal, 10)
            .font(.caption)
            .foregroundColor(.white)
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in

          // CUSTOM ADVANCED ANNOTATION (interactive)
          MapAnnotation(coordinate: item.location) {
            MapAnnotationView(location: item)
          }
        }) //: MAP
        .ignoresSafeArea()
    }
    .background(Color("ColorPink2").ignoresSafeArea())
    
  }
}

// MARK: - PREVIEW

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView()
      .previewDevice("iPhone 11 Pro")
  }
}

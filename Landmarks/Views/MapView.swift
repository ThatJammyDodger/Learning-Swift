//
//  MapView.swift
//  Landmarks
//
//  Created by Jay Ambadkar  on 21/03/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    var location: CLLocationCoordinate2D
    
    @State private var region: MKCoordinateRegion
    
    init(location: CLLocationCoordinate2D) {
        self.location = location
        region = MKCoordinateRegion(
            center: location,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(location: landmarks[0].locationCoordinate)
    }
}

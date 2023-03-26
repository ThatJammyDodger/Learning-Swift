//
//  Landmark.swift
//  Landmarks
//
//  Created by Jay Ambadkar  on 22/03/2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var name: String
    var id: Int
    var park: String
    var state: String
    var description: String
    var isFavourite: Bool
    var isFeatured: Bool
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Hashable, Codable {
        var longitude: Double
        var latitude: Double
    }
}

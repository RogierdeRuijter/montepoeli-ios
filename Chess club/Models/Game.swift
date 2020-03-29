//
//  Game.swift
//  Chess club
//
//  Created by Rogier De Ruijter on 22/03/2020.
//  Copyright © 2020 Rogier De Ruijter. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Game: Hashable, Codable, Identifiable {
    var id: String
    var white: String
    var black: String
    var winner: String

//    var locationCoordinate: CLLocationCoordinate2D {
//        CLLocationCoordinate2D(
//            latitude: coordinates.latitude,
//            longitude: coordinates.longitude)
//    }

//    enum Category: String, CaseIterable, Codable, Hashable {
//        case featured = "Featured"
//        case lakes = "Lakes"
//        case rivers = "Rivers"
//        case mountains = "Mountains"
//    }
}

//extension Game {
//    var image: Image {
//        ImageStore.shared.image(name: imageName)
//    }
//}

//struct Coordinates: Hashable, Codable {
//    var latitude: Double
//    var longitude: Double
//}


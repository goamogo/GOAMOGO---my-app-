//
//  Location.swift
//  GOAMOGO
//
//  Created by ella hong on 2023/09/16.
//

import SwiftUI
import MapKit

struct Location : Identifiable, Equatable {

    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    var id: String {
        name + cityName 
    }
    
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}




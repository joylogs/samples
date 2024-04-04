//
//  QuakeLocation.swift
//  Earthquakes
//
//  Created by Joy Banerjee on 04/04/24.
//

import Foundation

struct QuakeLocation: Decodable {
    var latitude: Double
    var longitude: Double
    
    
    struct RootProperties: Decodable {
        var products: Products
    }
    
    struct Products: Decodable {
        var origin: [Origin]
    }
    
    struct Origin: Decodable {
        var properties: OriginProperties
    }
    
    struct OriginProperties: Decodable {
        var latitude: Double
        var longitude: Double
    }
}

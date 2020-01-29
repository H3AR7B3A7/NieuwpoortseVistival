//
//  Stand.swift
//  Honolulu
//
//  Created by mobapp12 on 29/01/2020.
//  Copyright © 2020 H3AR7B3A7. All rights reserved.
//

import Foundation
import MapKit

class Stand:NSObject, MKAnnotation{
    
    var coordinate: CLLocationCoordinate2D
    var name: String
    var type: String
    
    internal init(coordinate: CLLocationCoordinate2D, name: String, type: String) {
        self.coordinate = coordinate
        self.name = name
        self.type = type
    }
    
}

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
    var title: String?
    var cat: String?
    
    init(coordinate: CLLocationCoordinate2D, name: String, cat: String) {
        self.coordinate = coordinate
        self.title = name
        self.cat = cat
    }
    
}

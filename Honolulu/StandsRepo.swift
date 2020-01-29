//
//  StandsRepo.swift
//  Honolulu
//
//  Created by mobapp12 on 29/01/2020.
//  Copyright © 2020 H3AR7B3A7. All rights reserved.
//

import Foundation
import MapKit

class StandsRepo{
    
    var stands:[Stand]
    
    init(){
        stands = [Stand]()
        
        let pinVersuz = Stand.init(coordinate: CLLocationCoordinate2DMake(51.149535, 2.715468), name: "Stage 1", type: "Stage")
        stands.append(pinVersuz)
        
        
    }
    
    
}

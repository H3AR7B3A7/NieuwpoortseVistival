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
        
        let stage1 = Stand.init(coordinate: CLLocationCoordinate2DMake(51.149535, 2.715468), subtitle: "The main stage...", name: "Stage 1", cat: "Stage")
        stands.append(stage1)
        
        let stage2 = Stand.init(coordinate: CLLocationCoordinate2DMake(51.150360, 2.716852), subtitle: "Secondary act stage...", name: "Stage 2", cat: "Stage")
        stands.append(stage2)
        
        let stage3 = Stand.init(coordinate: CLLocationCoordinate2DMake(51.142408, 2.698401), subtitle: "Secondary act stage...", name: "Stage 3", cat: "Stage")
        stands.append(stage3)
        
        let ehbo1 = Stand.init(coordinate: CLLocationCoordinate2DMake(51.148647, 2.714529), subtitle: "Get help here!", name: "EHBO NORTH", cat: "Ehbo")
        stands.append(ehbo1)
        
        let ehbo2 = Stand.init(coordinate: CLLocationCoordinate2DMake(51.143032, 2.700997), subtitle: "Get help here!", name: "EHBO SOUTH", cat: "Ehbo")
        stands.append(ehbo2)
        
        let food1 = Stand.init(coordinate: CLLocationCoordinate2DMake(51.146679, 2.709853), subtitle: "Verse frieten en snacks!", name: "FRIETMIEKE", cat: "Food")
        stands.append(food1)
    }
    
    
}

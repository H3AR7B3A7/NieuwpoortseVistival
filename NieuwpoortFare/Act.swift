//
//  Act.swift
//  NieuwpoortFare
//
//  Created by mobapp12 on 30/01/2020.
//  Copyright © 2020 H3AR7B3A7. All rights reserved.
//

import Foundation

class Act {
    
    var name:String
    var time:Date
    var location:String
    var about:String
    var mp3:String
    
    internal init(name: String, time: Date, location: String, about: String, mp3: String) {
        self.name = name
        self.time = time
        self.location = location
        self.about = about
        self.mp3 = mp3
    }
    
}

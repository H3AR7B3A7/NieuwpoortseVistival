//
//  ActRepo.swift
//  NieuwpoortFare
//
//  Created by mobapp12 on 30/01/2020.
//  Copyright © 2020 H3AR7B3A7. All rights reserved.
//

import Foundation

class ActRepo {
    
    var acts:[[Act]]
    
    init(){
        //Reel big fish, Swashbuckleen Admiral freebie
        acts = [[Act]]()
        
        let format = DateFormatter.init()
        format.dateFormat = "dd-MM-YYYY HH:mm"
        
        // Saturday
        var actsSat = [Act]()
        
        let act0 = Act.init(name: "Reel Big Fish", time: format.date(from: "12-09-2020 13:00")!, location: "Stage 1")
        actsSat.append(act0)
        
        let act1 = Act.init(name: "Reel Big Fish", time: format.date(from: "12-09-2020 13:00")!, location: "Stage 1")
        actsSat.append(act1)
        
        let act2 = Act.init(name: "A'capella", time: format.date(from: "12-09-2020 13:00")!, location: "Stage 2")
        actsSat.append(act2)
        
        let act3 = Act.init(name: "Experimantal", time: format.date(from: "12-09-2020 14:00")!, location: "Stage 3")
        actsSat.append(act3)
        
        let act4 = Act.init(name: "Swashbuckleen", time: format.date(from: "12-09-2020 15:00")!, location: "Stage 1")
        actsSat.append(act4)
        
        let act5 = Act.init(name: "Panflutes", time: format.date(from: "12-09-2020 16:00")!, location: "Stage 2")
        actsSat.append(act5)
        
        let act6 = Act.init(name: "Admiral Freebie", time: format.date(from: "12-09-2020 17:00")!, location: "Stage 1")
        actsSat.append(act6)
        
        let act7 = Act.init(name: "Karaoke", time: format.date(from: "12-09-2020 17:00")!, location: "Stage 3")
        actsSat.append(act7)
        
        
        acts.append(actsSat)
        
        
        // Sunday
        var actSun = [Act]()
        
        let act00 = Act.init(name: "Reel Big Fish", time: format.date(from: "13-09-2020 13:00")!, location: "Stage 1")
        actSun.append(act00)
        
        let act8 = Act.init(name: "Reel Big Fish", time: format.date(from: "13-09-2020 13:00")!, location: "Stage 1")
        actSun.append(act8)
        
        let act9 = Act.init(name: "A'capella", time: format.date(from: "13-09-2020 13:00")!, location: "Stage 2")
        actSun.append(act9)
        
        let act10 = Act.init(name: "Experimantal", time: format.date(from: "13-09-2020 14:00")!, location: "Stage 3")
        actSun.append(act10)
        
        let act11 = Act.init(name: "Swashbuckleen", time: format.date(from: "13-09-2020 15:00")!, location: "Stage 1")
        actSun.append(act11)
        
        let act12 = Act.init(name: "Panflutes", time: format.date(from: "13-09-2020 16:00")!, location: "Stage 2")
        actSun.append(act12)
        
        let act13 = Act.init(name: "Admiral Freebie", time: format.date(from: "13-09-2020 17:00")!, location: "Stage 1")
        actSun.append(act13)
        
        let act14 = Act.init(name: "Karaoke", time: format.date(from: "13-09-2020 17:00")!, location: "Stage 3")
        actSun.append(act14)
        
        
        acts.append(actSun)
    }
}

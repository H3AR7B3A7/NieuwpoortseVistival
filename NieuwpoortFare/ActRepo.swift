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
        
        
        let act1 = Act.init(name: "Reel Big Fish", time: format.date(from: "12-09-2020 13:00")!, location: "Stage 1", about: "test", mp3: "ReelBigFish")
        actsSat.append(act1)
        
        let act2 = Act.init(name: "A'capella", time: format.date(from: "12-09-2020 13:00")!, location: "Stage 2", about: "test", mp3: "acapella")
        actsSat.append(act2)
        
        let act3 = Act.init(name: "Experimantal", time: format.date(from: "12-09-2020 14:00")!, location: "Stage 3", about: "test", mp3: "experimental")
        actsSat.append(act3)
        
        let act4 = Act.init(name: "Swashbuckleen", time: format.date(from: "12-09-2020 15:00")!, location: "Stage 1", about: "test", mp3: "Swashbuckle")
        actsSat.append(act4)
        
        let act5 = Act.init(name: "Panflutes", time: format.date(from: "12-09-2020 16:00")!, location: "Stage 2", about: "test", mp3: "panflutes")
        actsSat.append(act5)
        
        let act6 = Act.init(name: "Admiral Freebie", time: format.date(from: "12-09-2020 17:00")!, location: "Stage 1", about: "test", mp3: "AdmiralFreebee")
        actsSat.append(act6)
        
        let act7 = Act.init(name: "Karaoke", time: format.date(from: "12-09-2020 17:00")!, location: "Stage 3", about: "test", mp3: "karaoke")
        actsSat.append(act7)
        
        
        acts.append(actsSat)
        
        
        // Sunday
        var actsSun = [Act]()
        
        
        let act8 = Act.init(name: "Reel Big Fish", time: format.date(from: "13-09-2020 13:00")!, location: "Stage 1", about: "test", mp3: "ReelBigFish")
        actsSun.append(act8)
        
        let act9 = Act.init(name: "A'capella", time: format.date(from: "13-09-2020 13:00")!, location: "Stage 2", about: "test", mp3: "acapella")
        actsSun.append(act9)
        
        let act10 = Act.init(name: "Experimantal", time: format.date(from: "13-09-2020 14:00")!, location: "Stage 3", about: "test", mp3: "experimental")
        actsSun.append(act10)
        
        let act11 = Act.init(name: "Swashbuckleen", time: format.date(from: "13-09-2020 15:00")!, location: "Stage 1", about: "test", mp3: "Swashbuckle")
        actsSun.append(act11)
        
        let act12 = Act.init(name: "Panflutes", time: format.date(from: "13-09-2020 16:00")!, location: "Stage 2", about: "test", mp3: "panflutes")
        actsSun.append(act12)
        
        let act13 = Act.init(name: "Admiral Freebie", time: format.date(from: "13-09-2020 17:00")!, location: "Stage 1", about: "test", mp3: "AdmiralFreebee")
        actsSun.append(act13)
        
        let act14 = Act.init(name: "Karaoke", time: format.date(from: "13-09-2020 17:00")!, location: "Stage 3", about: "test", mp3: "karaoke")
        actsSun.append(act14)
        
        
        acts.append(actsSun)
    }
}

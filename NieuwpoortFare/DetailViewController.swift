//
//  ViewController.swift
//  Honolulu
//
//  Created by mobapp12 on 29/01/2020.
//  Copyright © 2020 H3AR7B3A7. All rights reserved.
//

import UIKit
import AVFoundation

class DetailViewController: UIViewController {
    
    var act:Act?
    
    
    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var ArtistLbl: UILabel!
    @IBOutlet weak var SubScriptLbl: UILabel!
    @IBOutlet weak var AboutTV: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if let passedAct = act{
            //let artist = ActRepo.
            
            ArtistLbl.text = passedAct.name
            SubScriptLbl.text = passedAct.location
            AboutTV.text = passedAct.about
            let passedMp3 = passedAct.mp3
            
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: String(describing: passedMp3), ofType: "mp3")!))
                audioPlayer.play()
            } catch {
                print(error)
            }
        }
        
        
    }

    @IBAction func pause(_ sender: UIButton) {
        if audioPlayer.isPlaying{
            audioPlayer.stop()
        } else {
            audioPlayer.play()
        }
    }
    
}


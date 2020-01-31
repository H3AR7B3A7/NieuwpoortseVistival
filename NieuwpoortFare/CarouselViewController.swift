//
//  CarouselViewController.swift
//  NieuwpoortFare
//
//  Created by mobapp12 on 31/01/2020.
//  Copyright © 2020 H3AR7B3A7. All rights reserved.
//

import UIKit

class CarouselViewController: UIViewController {

    @IBOutlet weak var iCarouselView: iCarousel!
    
    var imgArr = [  UIImage(named: "nieuwpoort1.jpg"),
                    UIImage(named: "nieuwpoort2.jpg"),
                    UIImage(named: "nieuwpoort3.jpg"),
                    UIImage(named: "nieuwpoort4.jpg"),
                    UIImage(named: "nieuwpoort5.jpg"),
                    UIImage(named: "nieuwpoort6.jpg")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        iCarouselView.type = .timeMachine
        iCarouselView.contentMode = .scaleAspectFill
        iCarouselView.isPagingEnabled = true
    }
    
    

}

extension CarouselViewController: iCarouselDelegate, iCarouselDataSource {
    func numberOfItems(in carousel: iCarousel) -> Int {
        return imgArr.count
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        var imageView: UIImageView!
        if view == nil {
            imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
            imageView.contentMode = .scaleAspectFit
        } else {
            imageView = view as? UIImageView
        }
        imageView.image = imgArr[index]
        return imageView
    }
    
    
}

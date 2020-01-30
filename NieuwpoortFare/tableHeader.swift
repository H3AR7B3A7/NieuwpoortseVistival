//
//  tableHeader.swift
//  NieuwpoortFare
//
//  Created by mobapp12 on 30/01/2020.
//  Copyright © 2020 H3AR7B3A7. All rights reserved.
//

import UIKit

class tableHeader: UITableViewHeaderFooterView {

    @IBOutlet weak var title: UILabel!
    
   static let reuseIdentifier: String = String(describing: self)

       static var nib: UINib {
           return UINib(nibName: String(describing: self), bundle: nil)
       }
}

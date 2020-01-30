//
//  ProgramViewController.swift
//  NieuwpoortFare
//
//  Created by mobapp12 on 30/01/2020.
//  Copyright © 2020 H3AR7B3A7. All rights reserved.
//

import UIKit

class ProgramViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var saturdayTable: UITableView!
    
    var items:[[Act]]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let program:ActRepo = ActRepo.init()
        items = program.acts
        
        self.saturdayTable.register(
            tableHeader.nib,
            forHeaderFooterViewReuseIdentifier:
                tableHeader.reuseIdentifier
        )
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return items!.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items![section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentCell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        let currentAct = items![indexPath.section][indexPath.row]
        
        let format = DateFormatter.init()
        format.dateStyle = .none
        format.timeStyle = .short
        
        currentCell?.textLabel?.text = "\(format.string(from: currentAct.time)) - \(currentAct.name)"
        currentCell?.detailTextLabel?.text = "\(currentAct.location)"
        
        return currentCell!
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
       /*
        let view = UIView()
        view.backgroundColor = UIColor.init(red:0.39, green:0.68, blue:0.35, alpha:1.0)
        let lbl = UILabel()
        lbl.textColor = UIColor.white
        lbl.font = UIFont(name: "HelveticaNeue", size: CGFloat(16))
        if section == 0{
            lbl.text = "Saturday"
        }else{
            lbl.text = "Sunday"
        }
        self.view.addSubview(lbl)
        
        
        return view
 */
        guard let view = tableView.dequeueReusableHeaderFooterView(
                            withIdentifier: tableHeader.reuseIdentifier)
                            as? tableHeader
        else {
            return nil
        }

        if section == 0{
            view.title.text = "Saturday"
        }else{
            view.title.text = "Sunday"
        }
        
        return view
    }

    func tableView(_ tableView: UITableView,
                   heightForHeaderInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView,
                   estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 50.0
    }

}



//
//  StaticCellTableViewController.swift
//  stroyBoardApp
//
//  Created by Shan Indrakumar on 2019-10-27.
//  Copyright © 2019 CS2680. All rights reserved.
//

import UIKit

class StaticCellTableViewController: UITableViewController {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    func updateTime(){
        let now=Date()
        
        let dateFormatter=DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        self.dateLabel.text=dateFormatter.string(from: now)
        
        let timeFormatter=DateFormatter()
        timeFormatter.dateStyle = .none
        timeFormatter.timeStyle = .long
        
        self.timeLabel.text=timeFormatter.string(from: now)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.updateTime()
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true){
        (timer) in
        self.updateTime()
        }
    }
    
    
}

//
//  BetCustomizedCell.swift
//  FutbolWinApp
//
//  Created by IngR10 on 1/20/16.
//  Copyright © 2016 Innovatie. All rights reserved.
//

import UIKit

class BetCustomizedCell: UITableViewCell {
    
    @IBOutlet var titleEvent: UILabel!
    @IBOutlet var descriptionEvent: UILabel!
    @IBOutlet var scheduleEvent: UILabel!
    @IBOutlet var leftImage: UIImageView!
    @IBOutlet var rightImage: UIImageView!
    @IBOutlet var acceptBet: UILabel!
    var betType: NSString = ""
    
}

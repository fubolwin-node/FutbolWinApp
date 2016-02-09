//
//  MainViewController.swift
//  FutbolWinApp
//
//  Created by IngR10 on 1/18/16.
//  Copyright © 2016 Innovatie. All rights reserved.
//

import UIKit

class MainStacksViewsViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var betsTableView: UITableView!
    let betsList = BetsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateBetsList()
        
        betsTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "betCell")
        betsTableView.dataSource = betsList
        betsTableView.delegate = self
    }
    
    func populateBetsList() {
        betsList.llenarBets()
    }
    
}

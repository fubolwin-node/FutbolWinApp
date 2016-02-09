//
//  MainTablesViewViewController.swift
//  FutbolWinApp
//
//  Created by IngR10 on 1/19/16.
//  Copyright © 2016 Innovatie. All rights reserved.
//

import UIKit

class MainTablesViewViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var betsTableView: UITableView!
    let betsList = BetsList()
    
    override func viewDidLoad() {
        print("Ingresa a 'MainTablesViewViewController'..........")

        super.viewDidLoad()
        betsList.llenarBets()
        
        betsTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "betCell")
        betsTableView.dataSource = betsList
        betsTableView.delegate = self
        
    }
    
}

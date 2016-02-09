//
//  MainDynamicStackViewController.swift
//  FutbolWinApp
//
//  Created by IngR10 on 1/22/16.
//  Copyright © 2016 Innovatie. All rights reserved.
//

import UIKit

class MainDynamicStackViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var betsTableView: UITableView!
    @IBOutlet weak var newsStackView: UIStackView!
    var optionToshowStack: NSString?
    let betsList = BetsList()
    let fwinColor = FutbolWinColors()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBarProperties()
        setBetDataTableData()
        setNewsStackViewData()
    }
    
    func setNavigationBarProperties() {
        navigationController?.navigationBar.barTintColor = fwinColor.futbolWinGreenColor
        navigationController?.navigationBar.tintColor = fwinColor.futbolWinYellowColor
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: fwinColor.futbolWinYellowColor]
        title = "FutbolWin"
    }
    
    func setBetDataTableData() {
        betsList.llenarBets()
        betsTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "betCell")
        betsTableView.dataSource = betsList
        betsTableView.delegate = self
    }
    
    func setNewsStackViewData(){
        if(optionToshowStack == "3.1"){
            createDistributionOne()
        } else if(optionToshowStack == "3.2"){
            createDistributionTwo()
        } else if(optionToshowStack == "3.3"){
            createDistributionThree()
        }
    }
    
    // MARK: Table views Method
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if(self.betsList.bets[indexPath.row].betType=="CHALLENGE"){
            self.performSegueWithIdentifier("showChallengeDetail", sender: self)
        } else {
            self.performSegueWithIdentifier("showBetDetail", sender: self)
        }
    }
    
    
    
    
    
    
    
    func createDistributionOne(){
        let stackView1 = UIStackView()
        stackView1.alignment = UIStackViewAlignment.Fill
        stackView1.axis = .Vertical
        stackView1.distribution = .FillEqually
        stackView1.spacing = 3
        
        let stackView11 = UIStackView()
        stackView11.spacing = 3
        stackView11.alignment = UIStackViewAlignment.Fill
        let label11 = UILabel()
        label11.backgroundColor = UIColor.lightGrayColor()
        label11.text = "Noticia 1.1"
        stackView11.addArrangedSubview(label11)
        
        let stackView12 = UIStackView()
        stackView12.alignment = UIStackViewAlignment.Fill
        let label12 = UILabel()
        label12.backgroundColor = UIColor.lightGrayColor()
        label12.text = "Noticia 1.2"
        stackView12.addArrangedSubview(label12)
        
        let stackView13 = UIStackView()
        stackView13.alignment = UIStackViewAlignment.Fill
        let label13 = UILabel()
        label13.backgroundColor = UIColor.lightGrayColor()
        label13.text = "Noticia 1.3"
        stackView13.addArrangedSubview(label13)
        
        stackView1.addArrangedSubview(stackView11)
        stackView1.addArrangedSubview(stackView12)
        stackView1.addArrangedSubview(stackView13)
        
        let stackView2 = UIStackView()
        stackView2.alignment = UIStackViewAlignment.Fill
        stackView2.axis = .Vertical
        stackView2.distribution = .FillEqually
        stackView2.spacing = 3
        
        let stackView21 = UIStackView()
        stackView21.alignment = UIStackViewAlignment.Fill
        let label21 = UILabel()
        label21.backgroundColor = UIColor.lightGrayColor()
        label21.text = "Noticia 2.1"
        stackView21.addArrangedSubview(label21)
        
        let stackView22 = UIStackView()
        stackView22.alignment = UIStackViewAlignment.Fill
        let label22 = UILabel()
        label22.backgroundColor = UIColor.lightGrayColor()
        label22.text = "Noticia 2.2"
        stackView22.addArrangedSubview(label22)
        
        stackView2.addArrangedSubview(stackView21)
        stackView2.addArrangedSubview(stackView22)
        
        let stackView3 = UIStackView()
        stackView3.alignment = UIStackViewAlignment.Fill
        stackView3.axis = .Vertical
        stackView3.distribution = .FillEqually
        stackView3.spacing = 3

        let stackView31 = UIStackView()
        stackView31.alignment = UIStackViewAlignment.Fill
        let label31 = UILabel()
        label31.backgroundColor = UIColor.lightGrayColor()
        label31.text = "Noticia 3.1"
        stackView31.addArrangedSubview(label31)
        
        let stackView32 = UIStackView()
        stackView32.alignment = UIStackViewAlignment.Fill
        let label32 = UILabel()
        label32.backgroundColor = UIColor.lightGrayColor()
        label32.text = "Noticia 3.2"
        stackView32.addArrangedSubview(label32)
        
        let stackView33 = UIStackView()
        stackView33.alignment = UIStackViewAlignment.Fill
        let label33 = UILabel()
        label33.backgroundColor = UIColor.lightGrayColor()
        label33.text = "Noticia 3.3"
        stackView33.addArrangedSubview(label33)
        
        stackView3.addArrangedSubview(stackView31)
        stackView3.addArrangedSubview(stackView32)
        stackView3.addArrangedSubview(stackView33)
        
        self.newsStackView.addArrangedSubview(stackView1)
        self.newsStackView.addArrangedSubview(stackView2)
        self.newsStackView.addArrangedSubview(stackView3)
    }
   
    
    func createDistributionTwo(){
        let stackView1 = UIStackView()
        stackView1.alignment = UIStackViewAlignment.Fill
        stackView1.axis = .Vertical
        stackView1.distribution = .FillEqually
        stackView1.spacing = 3
        
        let stackView11 = UIStackView()
        stackView11.alignment = UIStackViewAlignment.Fill
        let label11 = UILabel()
        //label11.backgroundColor = UIColor(patternImage: (UIImage(named: "ImagenPromocionApuestas.png"))!)
        label11.backgroundColor = UIColor.lightGrayColor()
        label11.textAlignment = .Center
        label11.text = "Noticia 1.1"
        //label11.textColor = UIColor.redColor()
        stackView11.addArrangedSubview(label11)
        
        let stackView12 = UIStackView()
        stackView12.alignment = UIStackViewAlignment.Fill
        stackView12.distribution = .FillEqually
        stackView12.spacing = 3
        
        let stackView121 = UIStackView()
        stackView121.alignment = UIStackViewAlignment.Fill
        let label121 = UILabel()
        label121.textAlignment = .Center
        label121.backgroundColor = UIColor.lightGrayColor()
        label121.text = "Noticia 1.2.1"
        stackView121.addArrangedSubview(label121)
        
        let stackView122 = UIStackView()
        stackView122.alignment = UIStackViewAlignment.Fill
        let label122 = UILabel()
        label122.textAlignment = .Center
        label122.backgroundColor = UIColor.lightGrayColor()
        label122.text = "Noticia 1.2.2"
        stackView122.addArrangedSubview(label122)

        stackView12.addArrangedSubview(stackView121)
        stackView12.addArrangedSubview(stackView122)
        
        let stackView13 = UIStackView()
        stackView13.alignment = UIStackViewAlignment.Fill
        stackView13.distribution = .FillEqually
        stackView13.spacing = 3
        
        let stackView131 = UIStackView()
        stackView131.alignment = UIStackViewAlignment.Fill
        let label131 = UILabel()
        label131.textAlignment = .Center
        label131.backgroundColor = UIColor.lightGrayColor()
        label131.text = "Noticia 1.3.1"
        stackView131.addArrangedSubview(label131)
        
        let stackView132 = UIStackView()
        stackView132.alignment = UIStackViewAlignment.Fill
        let label132 = UILabel()
        label132.textAlignment = .Center
        label132.backgroundColor = UIColor.lightGrayColor()
        label132.text = "Noticia 1.3.2"
        stackView132.addArrangedSubview(label132)
        
        stackView13.addArrangedSubview(label131)
        stackView13.addArrangedSubview(label132)
        
        stackView1.addArrangedSubview(stackView11)
        stackView1.addArrangedSubview(stackView12)
        stackView1.addArrangedSubview(stackView13)
        
        self.newsStackView.addArrangedSubview(stackView1)
    }
    
    func createDistributionThree(){
        let stackView1 = UIStackView()
        stackView1.alignment = UIStackViewAlignment.Fill
        stackView1.axis = .Vertical
        stackView1.distribution = .FillEqually
        stackView1.spacing = 3
        
        let stackView11 = UIStackView()
        stackView11.alignment = UIStackViewAlignment.Fill
        let label11 = UILabel()
        //label11.backgroundColor = UIColor(patternImage: (UIImage(named: "ImagenPromocionApuestas.png"))!)
        label11.backgroundColor = UIColor.lightGrayColor()
        label11.textAlignment = .Center
        label11.text = "Noticia 1.1"
        //label11.textColor = UIColor.redColor()
        stackView11.addArrangedSubview(label11)
        
        let stackView12 = UIStackView()
        stackView12.alignment = UIStackViewAlignment.Fill
        let label12 = UILabel()
        //label12.backgroundColor = UIColor(patternImage: (UIImage(named: "ImagenPromocionApuestas.png"))!)
        label12.backgroundColor = UIColor.lightGrayColor()
        label12.textAlignment = .Center
        label12.text = "Noticia 1.2"
        //label12.textColor = UIColor.redColor()
        stackView12.addArrangedSubview(label12)
        
        let stackView13 = UIStackView()
        stackView13.alignment = UIStackViewAlignment.Fill
        let label13 = UILabel()
        //label13.backgroundColor = UIColor(patternImage: (UIImage(named: "ImagenPromocionApuestas.png"))!)
        label13.backgroundColor = UIColor.lightGrayColor()
        label13.textAlignment = .Center
        label13.text = "Noticia 1.3"
        //label13.textColor = UIColor.redColor()
        stackView13.addArrangedSubview(label13)
        
        stackView1.addArrangedSubview(stackView11)
        stackView1.addArrangedSubview(stackView12)
        stackView1.addArrangedSubview(stackView13)
        
        self.newsStackView.addArrangedSubview(stackView1)
    }
    
    
}


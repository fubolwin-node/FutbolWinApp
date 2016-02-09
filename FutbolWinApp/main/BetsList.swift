//
//  BetsList.swift
//  FutbolWinApp
//
//  Created by IngR10 on 1/19/16.
//  Copyright © 2016 Innovatie. All rights reserved.
//

import UIKit


class BetsList: NSObject {
    
    var bets: [Bet] = []
    let BET_TYPE: NSString = "BET"
    let CHALLENGE_TYPE: NSString = "CHALLENGE"
    
    func llenarBets() {
        let challenge = Bet()
        challenge.eventName = "DerlyFabiola te retó!!!"
        challenge.eventDescription = "Sante Fe (6) Vs Millonarios (0)"
        challenge.betLeftImage = UIImage(named: "DerlyFwUser45x45.png")
        challenge.betType = CHALLENGE_TYPE
        challenge.betAccept = "Acepta!!"
        bets.append(challenge)
        
        let bet1 = Bet()
        bet1.eventName = "Sante Fe Vs Millonarios"
        bet1.eventDescription = "Domingo 23, Marzo de 2016"
        bet1.betLeftImage = UIImage(named: "SantaFeLogo_45x45.png")
        bet1.betRightImage = UIImage(named: "MillonariosLogo_45x45.png")
        bet1.betType = BET_TYPE
        bets.append(bet1)
        
        let bet2 = Bet()
        bet2.eventName = "Nacional Vs Medellín"
        bet2.eventDescription = "Domingo 30, Abril de 2016"
        bet2.betLeftImage = UIImage(named: "NacionalLogo_45x45.png")
        bet2.betRightImage = UIImage(named: "MedellinLogo_45x45.png")
        bet2.betType = BET_TYPE
        bets.append(bet2)
        
        let bet3 = Bet()
        bet3.eventName = "Barcelona F.C Vs Atletico de Madrid"
        bet3.eventDescription = "Miercoles 13, Mayo de 2016"
        bet3.betLeftImage = UIImage(named: "BarcelonaLogo_45x45.png")
        bet3.betRightImage = UIImage(named: "AtleticoMadridLogo_45x45.png")
        bet3.betType = BET_TYPE
        bets.append(bet3)
        
        let bet4 = Bet()
        bet4.eventName = "Sante Fe Vs River PLate"
        bet4.eventDescription = "Sábado 12, Junio de 2016"
        bet4.betLeftImage = UIImage(named: "SantaFeLogo_45x45.png")
        bet4.betRightImage = UIImage(named: "RiverPlateLogo_45x45.png")
        bet4.betType = BET_TYPE
        bets.append(bet4)
        
        let bet5 = Bet()
        bet5.eventName = "Colombia Vs Brasil"
        bet5.eventDescription = "Sábado 20, Junio de 2016"
        bet5.betLeftImage = UIImage(named: "ColombiaLogo_45x45.png")
        bet5.betRightImage = UIImage(named: "BrasilLogo_45x45.png")
        bet5.betType = BET_TYPE
        bets.append(bet5)
        
        let bet6 = Bet()
        bet6.eventName = "Real Madrid Vs Millonarios"
        bet6.eventDescription = "Sábado 12, Junio de 2016"
        bet6.betLeftImage = UIImage(named: "RealMadridLogo_45x45.png")
        bet6.betRightImage = UIImage(named: "MillonariosLogo_45x45.png")
        bet6.betType = BET_TYPE
        bets.append(bet6)
    }

}


extension BetsList : UITableViewDataSource {

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bets.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let item = bets[indexPath.row]
        return createCustomizedCellObject(tableView, bet: item)
    }
    
    func createCustomizedCellObject(tableView: UITableView, bet item: Bet) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("BetCustomizedCell") as! BetCustomizedCell
        cell.titleEvent.text = item.eventName
        cell.leftImage.image = item.betLeftImage
        cell.rightImage.image = item.betRightImage
        cell.scheduleEvent.text = item.eventDescription
        cell.acceptBet.text = item.betAccept as? String
        return cell
    }
    
    
}
//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Jun.Yuan on 16/6/8.
//  Copyright © 2016年 Gabrielle Miller-Messner. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource {
    var history:[RPSMatch]!
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("history") as! HistoryTableCell
        let match = history[indexPath.row]
        
        cell.matchResultLabel.text = matchResult(match)
        cell.playerImage.image = imageForRPS(match.p1)
        cell.computerImage.image = imageForRPS(match.p2)
        
        return cell
    }
    
    func matchResult(match: RPSMatch) -> String {
        if match.p1 == match.p2 {
            return "Tie."
        } else if match.p1.defeats(match.p2){
            return "Win!"
        } else {
            return "Loss."
        }
    }
    
    func imageForRPS(rps:RPS) -> UIImage {
        var image:UIImage!
        switch rps {
        case .Paper:
            image = UIImage(named: "paper")
        case .Rock:
            image = UIImage(named:  "rock")
        case .Scissors:
            image = UIImage(named:  "scissors")
        }
        return image
    }
}

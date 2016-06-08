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
        let cell = tableView.dequeueReusableCellWithIdentifier("history")!
        let match = history[indexPath.row]
        
        cell.textLabel?.text = matchResult(match)
        cell.detailTextLabel?.text = match.p1.description + " vs. " + match.p2.description
        
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

}

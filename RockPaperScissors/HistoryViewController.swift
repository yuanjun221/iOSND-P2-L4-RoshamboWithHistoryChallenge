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
        
        var status:String!
        
        if match.p1 == match.winner {
            status = " win!"
        }
        if match.p1 == match.loser {
            status = " lose."
        }
        
        cell.textLabel?.text = "You" + status
        cell.detailTextLabel?.text = match.p1.description + " VS. " + match.p2.description
        
        return cell
    }

}

//
//  ViewController.swift
//  HackwichSix
//
//  Created by CM Student on 3/3/20.
//  Copyright © 2020 CM Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
    // FOR PARTS 1 - 10    var myFriends = ["Dalton", "Bethany", "Alyssa"]
    var friendsHomeArray = ["Dalton", "Bethany", "Alyssa"]
    var myPlacesToVisit = ["Japan", "Uruguay", "Finland"]
   
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return myPlacesToVisit.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        let text = myPlacesToVisit[indexPath.row]
        cell.textLabel?.text = text
        cell.detailTextLabel?.text = friendsHomeArray[indexPath.row]
        return cell
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


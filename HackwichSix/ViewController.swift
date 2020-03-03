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
    
    var myFriends = ["Dalton", "Bethany", "Alyssa"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return myFriends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        let text = myFriends[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


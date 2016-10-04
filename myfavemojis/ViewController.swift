//
//  ViewController.swift
//  myfavemojis
//
//  Created by BHSRam4 on 9/30/16.
//  Copyright © 2016 BHSRam4. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var cooltableview: UITableView!
    
    var emoji = ["😀 THE SMILE","😂 THE CRY LAUGHER","☺️ THE HAPPY","😁 THE SCARED","😕 THE DISSAPOINTED","😳 THE EMBARRASED","🙄 THE INNOCENT"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        cooltableview.dataSource = self //that data source makes where to look for the table
        cooltableview.delegate = self //And contents
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return emoji.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emoji[indexPath.row]
        return cell
    }
    //rows are 0 based
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


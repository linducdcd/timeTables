//
//  ViewController.swift
//  Duet
//
//  Created by Lind Ucdcd on 5/21/19.
//  Copyright © 2019 Lind Ucdcd. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    
    
    

    
    @IBOutlet weak var table: UITableView!
    
    @IBOutlet weak var sliderOutlet: UISlider!
    
    @IBAction func sliderAction(_ sender: Any) {
        
        print(sliderOutlet.value)
        table.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = String(Int(sliderOutlet.value * 50) * (indexPath.row + 1))
        
        return cell
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    

}


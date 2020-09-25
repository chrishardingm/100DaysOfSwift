//
//  ViewController.swift
//  Day16
//
//  Created by Chris Harding on 9/15/20.
//  Copyright © 2020 Chris Harding. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        print(pictures)
        }
        // Do any additional setup after loading the view.
    }


}


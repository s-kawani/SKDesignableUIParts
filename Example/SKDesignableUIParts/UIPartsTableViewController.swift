//
//  UIPartsTableViewController.swift
//  SKDesignableUIParts_Example
//
//  Created by Shin Kawani on 2017/11/10.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class UIPartsTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.ex.register(cellType:SKDesignableTableViewCellAlpha.self)
        tableView.backgroundColor = UIColor.clear
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.ex.dequeueReusableCell(with: SKDesignableTableViewCellAlpha.self, for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cell = tableView.cellForRow(at: indexPath)
        
        if let height = cell?.frame.height {
            
            return height
        }
        
        return 50
    }

}

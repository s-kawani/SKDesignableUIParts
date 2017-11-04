//
//  ViewController.swift
//  SKDesignableUIParts
//
//  Created by shin-kawani on 10/28/2017.
//  Copyright (c) 2017 shin-kawani. All rights reserved.
//

import UIKit
import SKDesignableUIParts

class ViewController: UIViewController {

    @IBOutlet weak var button: SKDesignableButton!
    @IBOutlet weak var textField: SKTextFieledView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        textField.borderOnlyButtom = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


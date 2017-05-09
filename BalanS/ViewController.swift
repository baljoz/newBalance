//
//  ViewController.swift
//  BalanS
//
//  Created by Stefan Djordjevic on 3/9/17.
//  Copyright © 2017 Stefan Djordjevic. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var click = false
    @IBOutlet weak var login: UIButton!
   
    
    @IBOutlet weak var loginView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        login.layer.cornerRadius = 2;
        login.layer.borderWidth = 1;
        login.layer.borderColor = UIColor(red: 128, green: 128, blue: 128, alpha: 1).cgColor
     //   login.layer.cornerRadius=10
       loginView.layer.cornerRadius=10
        
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    
  
}


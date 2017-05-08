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
   
    @IBOutlet weak var remember: UIButton!
    @IBOutlet weak var loginView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        login.layer.cornerRadius = 2;
        login.layer.borderWidth = 1;
        login.layer.borderColor = UIColor.black.cgColor
        login.layer.cornerRadius=10
        loginView.layer.cornerRadius=10
        remember.layer.cornerRadius=5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var checkButton: UIButton!
    
    @IBAction func OnCheck(_ sender: Any) {
        if !click {
        let imag = UIImage(named:"Checke")
            checkButton.setImage(imag, for: UIControlState.normal)
            click=true
        }
        else
        {
            checkButton.setImage(nil, for: UIControlState.normal)
            click=false
        
        }
        
    }

}


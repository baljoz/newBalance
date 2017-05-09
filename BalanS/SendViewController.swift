//
//  SendViewController.swift
//  BalanS
//
//  Created by Stefan Djordjevic on 3/13/17.
//  Copyright © 2017 Stefan Djordjevic. All rights reserved.
//

import UIKit

class SendViewController: UIViewController {

  
    @IBOutlet weak var send: UIButton!
    @IBOutlet weak var vview: UIView!
    @IBOutlet weak var dugme: UIBarButtonItem!
    //@IBOutlet weak var dugme: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        dugme.target=revealViewController()
        dugme.action = #selector(SWRevealViewController.revealToggle(_:))        // Do any additional setup after loading the view.
         vview.layer.cornerRadius = 10
        send.layer.borderWidth = 1;
        send.layer.borderColor = UIColor(red: 128, green: 128, blue: 128, alpha: 1).cgColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

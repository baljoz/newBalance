//
//  QRViewController.swift
//  BalanS
//
//  Created by Milos Stosic on 5/8/17.
//  Copyright © 2017 Stefan Djordjevic. All rights reserved.
//

import UIKit

class QRViewController: UIViewController {

    @IBOutlet weak var dugme: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        dugme.target=revealViewController()
        dugme.action = #selector(SWRevealViewController.revealToggle(_:))
        

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

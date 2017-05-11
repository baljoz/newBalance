//
//  SendViewController.swift
//  BalanS
//
//  Created by Stefan Djordjevic on 3/13/17.
//  Copyright © 2017 Stefan Djordjevic. All rights reserved.
//

import UIKit

class SendViewController: UIViewController {

    @IBOutlet weak var navigation: UINavigationItem!
  
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
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "wallet emc2")
        imageView.image = image
        
        //       navigation.titleView.p
        //navigation.titleView = imageView
        navigation.title = "SEND"

        
   /*     self.navigationController.navigationBar.barTintColor = .blueColor()
        self.navigationController.navigationBar.tintColor = .whiteColor()
        self.navigationController.navigationBar.titleTextAttributes = [
            NSForegroundColorAttributeName : UIColor.whiteColor()*/
        
        
      //  navigationController?.navigationBar
        
        self.navigationController?.navigationBar.backgroundColor = .black
        
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

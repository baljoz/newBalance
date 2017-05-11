//
//  NavigationViewController.swift
//  BalanS
//
//  Created by Stefan Djordjevic on 3/13/17.
//  Copyright © 2017 Stefan Djordjevic. All rights reserved.
//

import UIKit

class NavigationViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

   
    @IBOutlet weak var navigation: UINavigationItem!
    
    @IBOutlet weak var emc2: UIBarButtonItem!
    @IBOutlet weak var balanceView: UIView!
    @IBOutlet weak var send: UIButton!
    @IBOutlet weak var balance: UIButton!
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var walletBallance: UILabel!
    @IBOutlet weak var dugme: UIBarButtonItem!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        dugme.target=revealViewController()
        dugme.action = #selector(SWRevealViewController.revealToggle(_:))
        
        table.backgroundColor = nil
 
        table.isScrollEnabled = false
        
     /*   let logo = UIImage(named: "wallet emc2")
        let imageView = UIImageView(image:logo)
        self.navigation.titleView = imageView*/
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "emc2")
        imageView.image = image
        
 //       navigation.titleView.p
       //navigation.titleView = imageView
        navigation.title = "WALLET"
       // navigation.titleView.h
    //emc2.adjustsImageWhenHighlighted = NO
      //  self.navigationItem.rightBarButtonItem.customView.alpha = 0.5;
        
        table.allowsSelection = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ballancecell", for: indexPath) as! BalanceTableViewCell
        
        cell.valutName.text = "EUR"
        cell.valutImage.image = UIImage(named:"Euro")
        cell.valutValue.text = "543"
        cell.backgroundColor = nil
        return cell
    }
    
    @IBAction func onClickSend(_ sender: Any) {
        
        send.isEnabled = false
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
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

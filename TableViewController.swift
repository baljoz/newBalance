//
//  TableViewController.swift
//  BalanS
//
//  Created by Stefan Djordjevic on 3/13/17.
//  Copyright © 2017 Stefan Djordjevic. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    var ManuNameArray:Array = [String]()
    var iconArray:Array = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ManuNameArray = ["BALLANCE STORE","TRANSACTION","SEND","RECEIVE","QR SCANING","LOGOUT"]
        
       
        
        // Do any additional setup after loading the view.
        table.isScrollEnabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ManuNameArray.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellTableViewCell", for: indexPath) as! CellTableViewCell
       
        cell.labela.text! = ManuNameArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let revealviewcontroller:SWRevealViewController = self.revealViewController()
        
        let cell:CellTableViewCell = tableView.cellForRow(at: indexPath) as! CellTableViewCell
        
    
            //  var p : Int
      //  p += 1
        if cell.labela.text! == "TRANSACTION"
          {
            let mainstoreboart:UIStoryboard = UIStoryboard (name: "Main", bundle : nil)
            let newViewcontroler=mainstoreboart.instantiateViewController(withIdentifier: "ListViewController") as! ListViewController
            let newFrontControler = UINavigationController.init(rootViewController: newViewcontroler )
            revealviewcontroller.pushFrontViewController(newFrontControler, animated: true)
        }
        else if cell.labela.text! == "BALLANCE STORE"
          {
            let mainstoreboard: UIStoryboard = UIStoryboard(name: "Main", bundle : nil)
            let newViewCOntroller = mainstoreboard.instantiateViewController(withIdentifier: "NavigationViewController") as! NavigationViewController
            let newFrontCOntroler = UINavigationController.init(rootViewController: newViewCOntroller)
            
              revealviewcontroller.pushFrontViewController(newFrontCOntroler, animated: true)
    }
        
        else   if cell.labela.text! == "RECEIVE"
        {
            
            
            let mainstoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewcontroller = mainstoryboard.instantiateViewController(withIdentifier: "ReceiveViewController") as! ReceiveViewController
            let newFrontController = UINavigationController.init(rootViewController: newViewcontroller)
            
            revealviewcontroller.pushFrontViewController(newFrontController, animated: true)
        }
        else if cell.labela.text! == "SEND"
         {
         
         let mainstoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
         let newViewcontroller = mainstoryboard.instantiateViewController(withIdentifier: "SendViewController") as! SendViewController
         let newFrontController = UINavigationController.init(rootViewController: newViewcontroller)
         
         revealviewcontroller.pushFrontViewController(newFrontController, animated: true)
         
         }
        
        else if cell.labela.text! == "QR SCANING"
        {
            
            let mainstoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewcontroller = mainstoryboard.instantiateViewController(withIdentifier: "qr") as! QRViewController
            let newFrontController = UINavigationController.init(rootViewController: newViewcontroller)
            
            revealviewcontroller.pushFrontViewController(newFrontController, animated: true)
            
        }
        else if cell.labela.text! == "LOGOUT"
        {
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "main") as UIViewController
            self.present(nextViewController, animated:true, completion:nil)
            //  let mainstoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
           // let newViewcontroller = mainstoryboard.instantiateViewController(withIdentifier: "main") as! ViewController
          //  let newFrontController = UINavigationController.init(rootViewController: newViewcontroller)
            
        //    revealviewcontroller.pushFrontViewController(newFrontController, animated: true)
            
        }
         /* else if cell.labela.text! == "Contact"
          {
            let mainstoreboard: UIStoryboard = UIStoryboard(name: "Main", bundle : nil)
            let newViewCOntroller = mainstoreboard.instantiateViewController(withIdentifier: "contact") as! ContactViewController
        //    newViewCOntroller.
            let newFrontCOntroler = UINavigationController.init(rootViewController: newViewCOntroller)
            
            revealviewcontroller.pushFrontViewController(newFrontCOntroler, animated: true)
        }*/
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

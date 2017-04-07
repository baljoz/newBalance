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
 ManuNameArray = ["My Balance","Send","Receive","ViewTranstaction","Contact"]
        
        //prvi parametar bzvz
        iconArray = [UIImage(named:"send")!,UIImage(named:"send")!,UIImage(named:"Receive")!,UIImage(named:"Select")!,UIImage(named:"Contact")!]
        
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
        cell.slika.image = iconArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let revealviewcontroller:SWRevealViewController = self.revealViewController()
        
        let cell:CellTableViewCell = tableView.cellForRow(at: indexPath) as! CellTableViewCell
        
          if cell.labela.text! == "Send"
         {
            
            let mainstoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewcontroller = mainstoryboard.instantiateViewController(withIdentifier: "SendViewController") as! SendViewController
            let newFrontController = UINavigationController.init(rootViewController: newViewcontroller)
            
            revealviewcontroller.pushFrontViewController(newFrontController, animated: true)
         
         }
      else   if cell.labela.text! == "Receive"
         {
         
         
         let mainstoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
         let newViewcontroller = mainstoryboard.instantiateViewController(withIdentifier: "ReceiveViewController") as! ReceiveViewController
         let newFrontController = UINavigationController.init(rootViewController: newViewcontroller)
         
         revealviewcontroller.pushFrontViewController(newFrontController, animated: true)
         }
        
        else if cell.labela.text! == "ViewTranstaction"
          {
            let mainstoreboart:UIStoryboard = UIStoryboard (name: "Main", bundle : nil)
            let newViewcontroler=mainstoreboart.instantiateViewController(withIdentifier: "ListViewController") as! ListViewController
            let newFrontControler = UINavigationController.init(rootViewController: newViewcontroler )
            revealviewcontroller.pushFrontViewController(newFrontControler, animated: true)
        }
        else if cell.labela.text! == "My Balance"
          {
            let mainstoreboard: UIStoryboard = UIStoryboard(name: "Main", bundle : nil)
            let newViewCOntroller = mainstoreboard.instantiateViewController(withIdentifier: "NavigationViewController") as! NavigationViewController
            let newFrontCOntroler = UINavigationController.init(rootViewController: newViewCOntroller)
            
              revealviewcontroller.pushFrontViewController(newFrontCOntroler, animated: true)
    }
          else if cell.labela.text! == "Contact"
          {
            let mainstoreboard: UIStoryboard = UIStoryboard(name: "Main", bundle : nil)
            let newViewCOntroller = mainstoreboard.instantiateViewController(withIdentifier: "contact") as! ContactViewController
        //    newViewCOntroller.
            let newFrontCOntroler = UINavigationController.init(rootViewController: newViewCOntroller)
            
            revealviewcontroller.pushFrontViewController(newFrontCOntroler, animated: true)
        }
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

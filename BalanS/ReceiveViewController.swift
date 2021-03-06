//
//  ReceiveViewController.swift
//  BalanS
//
//  Created by Stefan Djordjevic on 3/14/17.
//  Copyright © 2017 Stefan Djordjevic. All rights reserved.
//

import UIKit

class ReceiveViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var navigation: UINavigationItem!
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var dugme: UIBarButtonItem!
    var images = [UIImage]()
    //@IBOutlet weak var dugme: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        dugme.target=revealViewController()
        dugme.action = #selector(SWRevealViewController.revealToggle(_:))
        
        images.append(UIImage(named:"ispupceno polje 2")!)
        images.append(UIImage(named:"udubljeno polje")!)
        table.backgroundColor = nil
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "wallet emc2")
        imageView.image = image
        
        //       navigation.titleView.p
      //  navigation.titleView = imageView
       
        navigation.title="RECEIVE"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "adressCell", for: indexPath) as! AdressTableViewCell
        
        cell.label.text = "dasd2edaw2dad2dae2dad2dca22d2d22425"
       
       if indexPath.row%2 == 0
        {
            cell.img.image = self.images[0]
        }
       else
       {
            cell.img.image = self.images[1]
       }
        return cell
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

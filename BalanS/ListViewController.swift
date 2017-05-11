//
//  ListViewController.swift
//  BalanS
//
//  Created by Stefan Djordjevic on 3/14/17.
//  Copyright © 2017 Stefan Djordjevic. All rights reserved.
//

import UIKit

class ListViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var dugme: UIBarButtonItem!
    var images = [UIImage] ()
    override func viewDidLoad() {
        super.viewDidLoad()

        dugme.target = revealViewController()
        dugme.action = #selector(SWRevealViewController.revealToggle(_:))
        // Do any additional setup after loading the view.
        table.backgroundColor = nil
        images.append(UIImage(named:"ispupceno polje 2")!)
        images.append(UIImage(named:"udubljeno polje")!)
        table.backgroundColor = nil
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "wallet emc2")
        imageView.image = image
        
        //       navigation.titleView.p
       // navigationItem.titleView = imageView
        navigationItem.title="TRANSACTION"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ListTableViewCell
        
   //     cell.label.text = "dasd2edaw2dad2dae2dad2dca22d2d22425"
        
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

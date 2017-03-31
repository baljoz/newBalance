//
//  DodajViewController.swift
//  BalanS
//
//  Created by Stefan Djordjevic on 3/16/17.
//  Copyright © 2017 Stefan Djordjevic. All rights reserved.
//
import CoreData
import UIKit

class DodajViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var mail: UITextField!
    @IBOutlet weak var addres: UITextField!
    @IBOutlet weak var subname: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        name.autocorrectionType = .no
        mail.autocorrectionType = .no
        addres.autocorrectionType = .no
        subname.autocorrectionType = .no
        // Do any additional setup after loading the view.
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

    @IBAction func dodaj(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let contex = appDelegate.persistentContainer.viewContext
        
        let newUser = NSEntityDescription.insertNewObject(forEntityName: "Contact", into: contex)
        
        newUser.setValue( name.text!, forKey: "name")
        newUser.setValue(subname.text!, forKey: "subname")
        newUser.setValue(addres.text!, forKey: "adress")
        newUser.setValue(mail.text!, forKey: "email")
        
        do {
            try contex.save()
            print("save")
        }
        catch
        {
            print("exc")
        }
        
      /*  let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "contact") as! ContactViewController
        // .instantiatViewControllerWithIdentifier() returns AnyObject! this must be downcast to utilize it
        
        self.present(viewController, animated: false, completion: nil)
        */
    }

    }


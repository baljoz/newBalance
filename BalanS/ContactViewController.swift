//
//  ContactViewController.swift
//  BalanS
//
//  Created by Stefan Djordjevic on 3/16/17.
//  Copyright © 2017 Stefan Djordjevic. All rights reserved.
//
import CoreData
import UIKit

class ContactViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource {
    var ime = [String]()
    var prezime = [String]()
    var mail = [String]()
    var adr = [String]()
    var kol = Int()
    
    @IBOutlet weak var dugme: UIBarButtonItem!
    @IBOutlet weak var tavleVIew: UITableView!
    override func viewDidLoad() {
        ucitajIzBazu()
                super.viewDidLoad()
        dugme.target=revealViewController()
        dugme.action = #selector(SWRevealViewController.revealToggle(_:))

        kol = ime.count
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ime.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tavleVIew.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ContactTableViewCell
        
        
        cell.ime.text=ime[indexPath.row]
        cell.prezime.text=prezime[indexPath.row]
        cell.email.text=mail[indexPath.row]
        cell.adr.text=adr[indexPath.row]
        
        return cell
    }
    override func viewDidAppear(_ animated: Bool) {
        tavleVIew.reloadData() 
    }
    func ucitajIzBazu() -> Void
    {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let contex = appDelegate.persistentContainer.viewContext
        
        let request=NSFetchRequest<NSFetchRequestResult>(entityName: "Contact")
        
        request.returnsObjectsAsFaults = false
        do {
            let result = try  contex.fetch(request)
            
            if result.count>0
            {
                for re in result as! [NSManagedObject]
                {
                    if let prez = re.value(forKey:"subname") as? String {
                        
                        prezime.append(prez)
                    }
                    else{
                        let pas="nema"
                        prezime.append(pas)
                    }
                    
                    if let username = re.value(forKey:"name") as? String {
                        
                        ime.append(username)
                        
                        print(username)
                    }
                    if let prez = re.value(forKey:"email") as? String {
                        
                        mail.append(prez)
                    }
                    
                    if let add = re.value(forKey:"adress") as? String {
                        
                        adr.append(add)
                    }
                    

                    
                }}}
            
        catch
        {
            print("ada")
        }
        
        func updateTable() -> Void{
            ucitajIzBazu()
           /* var k = ime.count
            if k > ime.count {
                var g = ContactTableViewCell()
                g.ime.text! = ime[k]
                self.tavleVIew.insertRows(at: IndexPath, with: g)
            }*/
         
            tavleVIew.reloadData()
        }
      //  @IBAction func sad(_ sender: Any) {
     //       self.tavleVIew.reloadData()
     //   }
    

    }
    
        //revealviewcontroller.pushFrontViewController(newFrontCOntroler, animated: true)
        
    /*@IBAction func dodajj(_ sender: Any) {
        let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DodajViewController") as! DodajViewController
        // .instantiatViewControllerWithIdentifier() returns AnyObject! this must be downcast to utilize it
        
        self.present(viewController, animated: false, completion: nil)
    }
/*
    
 /*   @IBAction func press(_ sender: Any) {
        let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SendViewController") as! SendViewController
        // .instantiatViewControllerWithIdentifier() returns AnyObject! this must be downcast to utilize it
        
        self.present(viewController, animated: false, completion: nil)
        
    }*/
    
 /*   @IBAction func addpress(_ sender: Any) {
        let mainstoreboard: UIStoryboard = UIStoryboard(name: "Main", bundle : nil)
        let newViewCOntroller = mainstoreboard.instantiateViewController(withIdentifier: "add") as! AddViewController
        //    newViewCOntroller.
        let newFrontCOntroler = UINavigationController.init(rootViewController: newViewCOntroller)
        
        
        newFrontCOntroler.show(AddViewController,  )
        
        //revealviewcontroller.pushFrontViewController(newFrontCOntroler, animated: true)
        
    }
    /*.    // MARK: - Navigation

     
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */*/*/*/

}

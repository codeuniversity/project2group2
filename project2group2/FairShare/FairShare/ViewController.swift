//
//  ViewController.swift
//  FairShare
//
//  Created by Robin Stöhr on 09.11.17.
//  Copyright © 2017 Robin Stöhr. All rights reserved.
//
//sfsfsdsfd
import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var companyTableView: UITableView!
    
    
    var psgTextField: UITextField?
    var emTextField: UITextField?
    
    
    var passengers = [""]
    var button: UILabel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButton()
        
        companyTableView.delegate = self
        companyTableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return passengers.count
    }
    
    
    @objc func buttonTapped(sender: UITapGestureRecognizer) {
        let alertController = UIAlertController(title: "Enter name and email",
                                                message: nil,
                                                preferredStyle: .alert)
        alertController.addTextField(configurationHandler: psgTextField)
        alertController.addTextField(configurationHandler: emTextField)
        
        let okAction = UIAlertAction(title: "Submit", style: .default, handler: self.okHandler)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true)
        
        
    }
    
    func psgTextField(textField: UITextField!) {
        psgTextField = textField
        psgTextField?.placeholder = "Name"
    }
    
    func emTextField(textField: UITextField!) {
        emTextField = textField
        emTextField?.placeholder = "Email"
    }
    
    func okHandler(alert: UIAlertAction!) {
        //        let simpleVC = Simple_VC()
        //        simpleVC.customInit(psgStr: (psgTextField?.text)!, emStr: (emTextField?.text)!)
        let psgStr = (psgTextField?.text)!
        
        passengers.removeLast()
        passengers.append(psgStr)
        passengers.append("")
        
        
        
        
        companyTableView.reloadData()
        
    }
    
    func configureButton() {
        button = UILabel()
        let frame = CGRect(x: 0, y: 5, width: 300, height: 30)
        button?.frame = frame
        button?.text = "            Add Passenger"
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(buttonTapped(sender:)))
        button?.addGestureRecognizer(tapGesture)
        button?.isUserInteractionEnabled = true
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let passenger = passengers[indexPath.row]
        if let cell = companyTableView.dequeueReusableCell(withIdentifier: "cell") {
            cell.textLabel?.text = passenger
            
            if cell.textLabel?.text == "" {
                cell.contentView.addSubview(button!)
            } else {
                // Nothing
            }
            
            return cell
        }
        
        return UITableViewCell()
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondController = segue.destination as! ViewController2
        secondController.passengers2 = passengers
        
    }
}


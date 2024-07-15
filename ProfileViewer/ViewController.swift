//
//  ViewController.swift
//  ProfileViewer
//
//  Created by Sameer Ansari on 14/07/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var inputName: UITextField!
    @IBOutlet weak var lblemail: UILabel!
    @IBOutlet weak var InputEmail: UITextField!
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var ButtonRe: UIButton!
    
    var mode : Bool = false
    @IBAction func ButtonReset(_ sender: UIButton) {
        print("in")
        if mode == false {
            sender.setTitle("Done", for: .normal)
            mode = true
            updateUI()
        }
        else
        {
            sender.setTitle("Reset", for: .normal)
            Name.text = inputName.text
            email.text = InputEmail.text
            mode = false
            updateUI()
        }
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        
        updateUI()
    }
    
    func  setData(name : String , Email : String){
        Name.text = name
        email.text = Email
    }
    
    func updateUI(){
        if mode == false {
            inputName.isHidden = true
            InputEmail.isHidden = true
            Name.isHidden = false
            email.isHidden = false
            lblName.isHidden = false
            lblemail.isHidden = false
            print("hehe")
        }
        else if mode == true {
            
            inputName.isHidden =  false
            Name.isHidden = true
            email.isHidden = true
            lblName.isHidden = true
            lblemail.isHidden = true
            InputEmail.isHidden = false
            inputName.placeholder = Name.text
            InputEmail.placeholder = email.text
        }
    }


}


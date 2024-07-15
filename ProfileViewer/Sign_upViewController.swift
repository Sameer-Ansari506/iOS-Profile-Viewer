//
//  Sign_upViewController.swift
//  ProfileViewer
//
//  Created by Sameer Ansari on 15/07/2024.
//

import UIKit

class Sign_upViewController: UIViewController {

    @IBOutlet private weak var inputEmail: UITextField!
    @IBOutlet private weak var inputName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Enterdata(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let Profile = storyBoard.instantiateViewController(withIdentifier:"Profile" ) as!
        ViewController
        Profile.modalPresentationStyle = .fullScreen
        self.present(Profile, animated:true)
        Profile.setData( name: inputName.text ?? "" , Email: inputEmail.text ?? "")
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

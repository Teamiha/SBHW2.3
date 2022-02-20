//
//  ViewController.swift
//  LogIn
//
//  Created by Михаил Светлов on 19.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userNameTitle: UITextField!
    
    @IBOutlet weak var PasswordTitle: UIStackView!
    var userName: String!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
    }

    @IBAction func loginAction(_ sender: Any) {
        let test = userNameTitle.text
        if test != "1" {
            showAlert(with: "bla", and: "blabla")
            
        }
    }
    
    @IBAction func forgotPassword() {
    }
    
    @IBAction func forgotName() {
    }
    
    
    
}
extension ViewController {
    private func showAlert(with title: String, and massage: String) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


//
//  ViewController.swift
//  LogIn
//
//  Created by Михаил Светлов on 19.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userNameTitle: UITextField!
    @IBOutlet weak var passwordTitle: UITextField!
    
    var userName: String!
    var password: String!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        userName = "007"
        password = "12345"
        
    
    }

    @IBAction func loginAction(_ sender: Any) {
        let inputLogin = userNameTitle.text
        let inputPassword = passwordTitle.text
        if inputLogin != userName && inputPassword != password {
            showAlert(with: "bla", and: "blabla")
            passwordTitle.text?.removeAll()
            
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


//
//  ViewController.swift
//  LogIn
//
//  Created by Михаил Светлов on 19.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    
   
let test = 1
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func loginAction(_ sender: Any) {
        if test != 1 {
            showAlert(with: "bla", and: "blabla")
        }
    }
    
}
extension ViewController {
    private func showAlert(with title: String, and massage: String) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        present(alert, animated: true)
    }
}


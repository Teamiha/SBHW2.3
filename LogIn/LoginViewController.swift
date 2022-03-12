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
    
    
    private let userName = "007"
    private let password = "12345"
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? WelcomeViewController else { return }
        settingsVC.userName = userName
    }
    
    
    @IBAction func loginAction(_ sender: Any) {
        let inputLogin = userNameTitle.text
        let inputPassword = passwordTitle.text
        if inputLogin != userName || inputPassword != password {
            showAlert(with: "Incorrect login or password", and: "Please try again")
            passwordTitle.text?.removeAll()
        } else {
            performSegue(withIdentifier: "welcomeView", sender: nil)
        }
    }
    
    @IBAction func forgotPassword() {
        showAlert(with: "Your password", and: password)
    }
    
    @IBAction func forgotName() {
        showAlert(with: "Your name", and: userName)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTitle.text = nil
        passwordTitle.text = nil
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


// MARK: - UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTitle {
            passwordTitle.becomeFirstResponder()
        } else {
            loginAction("")
        }
        return true
    }
    
    
}

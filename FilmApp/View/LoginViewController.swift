//
//  ViewController.swift
//  FilmApp
//
//  Created by Denys on 29.06.2022.
//

import UIKit
import FirebaseAuth
class LoginViewController: UIViewController {
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var label: UILabel!
    var viewModel = ViewModel()
       
    @IBAction func signInTapped(_ sender: Any) {
        //viewModel.userButtonPressed(login: emailTextField.text!, password: passwordTextField.text!)
        
        
        // TODO Validate Text Fields
        
        //Create cleaned versions of the text field
        
        let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
    
        
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            
            if error != nil {
                //Couldn't sign in
                self.label.text = error!.localizedDescription
                self.label.alpha = 1
            } else {
                let homeViewController = self.storyboard?.instantiateViewController(withIdentifier: Constants.Storyboard.homeViewController) as? HomeViewController
                
                self.view.window?.rootViewController = homeViewController
                self.view.window?.makeKeyAndVisible()
            }
        }
        
        
        
    }
   
    

    override func viewDidLoad() {
        super.viewDidLoad()

//        bindViewModel()
//        initialState()
    }
//
//
//    func bindViewModel () {
//        viewModel.statusText.bind({ (statusText) in
//            DispatchQueue.main.async {
//                self.label.text = statusText
//            }
//        })
//    }
    
}

/*
 
 
 
 
 */

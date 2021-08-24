//
//  LoginViewController.swift
//  iOSTest
//
//  Copyright © 2020 Rapptr Labs. All rights reserved.

import UIKit

class LoginViewController: UIViewController {
    
    /**
     * =========================================================================================
     * INSTRUCTIONS
     * =========================================================================================
     * 1) Make the UI look like it does in the mock-up.
     *
     * 2) Take email and password input from the user
     *
     * 3) Use the endpoint and paramters provided in LoginClient.m to perform the log in
     *
     * 4) Calculate how long the API call took in milliseconds
     *
     * 5) If the response is an error display the error in a UIAlertController
     *
     * 6) If the response is successful display the success message AND how long the API call took in milliseconds in a UIAlertController
     *
     * 7) When login is successful, tapping 'OK' in the UIAlertController should bring you back to the main menu.
     **/
    @IBOutlet weak var userEmail: UITextField!
    @IBOutlet weak var userPwd: UITextField!
      
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Login"
        initView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func initView() {
        userEmail.attributedPlaceholder = NSAttributedString(string: "Email",
                                     attributes: [NSAttributedString.Key.foregroundColor: UIColor.HexToColor(hexString: "#5F6063")])
        userPwd.attributedPlaceholder = NSAttributedString(string: "Password",
                                     attributes: [NSAttributedString.Key.foregroundColor: UIColor.HexToColor(hexString: "#5F6063")])
    }
    
    @IBAction func tappedLogin(_ sender: Any) {
        guard let email = userEmail.text, !email.isEmpty else {
            showAlert(text: "Please Input Email Address", success: false)
            return
        }
        guard let password = userPwd.text, !password.isEmpty else {
            showAlert(text: "Please Input Password", success: false)
            return
        }
        
        LoginClient(userName: email, pwd: password).response {  [weak self] (result) in
            switch result {
            case .success(let response):
                print(response)
                break
            case .failure(let error):
                print(error)
                break
            }
        }
    }
    
    private func showAlert(text: String, success: Bool) {
        let alert = UIAlertController(title: "", message: text, preferredStyle: UIAlertController.Style.alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: { action in
            if success {
                self.dismiss(animated: true, completion: nil)
            }
        })
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }
}

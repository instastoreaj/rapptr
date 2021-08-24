//
//  MenuViewController.swift
//  iOSTest
//
//  Copyright © 2020 Rapptr Labs. All rights reserved.

import UIKit

class MenuViewController: UIViewController {
    
    /**
     * =========================================================================================
     * INSTRUCTIONS
     * =========================================================================================
     *
     * 1) UI must work on iOS phones of multiple sizes. Do not worry about iPads.
     *
     * 2) Use Autolayout to make sure all UI works for each resolution
     *
     * 3) Use this starter project as a base and build upon it. It is ok to remove some of the
     *    provided code if necessary. It is ok to add any classes. This is your project now!
     *
     * 4) Read the additional instructions comments throughout the codebase, they will guide you.
     *
     * 5) Please take care of the bug(s) we left for you in the project as well. Happy hunting!
     *
     * Thank you and Good luck. - Rapptr Labs
     * =========================================================================================
     */
    
    // MARK: - Outlets
    @IBOutlet weak var chatButton: CustomView!
    @IBOutlet weak var loginButton: CustomView!
    @IBOutlet weak var animationButton: CustomView!
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Coding Tasks"
        let chatTap = UITapGestureRecognizer(target: self, action: #selector(self.handleChatTap(_:)))
        chatButton.addGestureRecognizer(chatTap)
        let loginTap = UITapGestureRecognizer(target: self, action: #selector(self.handleLoginTap(_:)))
        loginButton.addGestureRecognizer(loginTap)
        let animationTap = UITapGestureRecognizer(target: self, action: #selector(self.handleAnimationTap(_:)))
        animationButton.addGestureRecognizer(animationTap)
    }
    
    @objc func handleChatTap(_ sender: UITapGestureRecognizer ) {
        let chatViewController = ChatViewController()
        navigationController?.pushViewController(chatViewController, animated: true)
    }
    
    @objc func handleLoginTap(_ sender: UITapGestureRecognizer ) {
        let loginViewController = LoginViewController()
        navigationController?.pushViewController(loginViewController, animated: true)
    }
    
    @objc func handleAnimationTap(_ sender: UITapGestureRecognizer ) {
        let animationViewController = AnimationViewController()
        navigationController?.pushViewController(animationViewController, animated: true)
    }
}

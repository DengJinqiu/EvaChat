//
//  ViewController.swift
//  EvaChat
//
//  Created by Jinqiu Deng on 6/15/16.
//  Copyright © 2016 jinqiu. All rights reserved.
//

import UIKit
import Firebase

class SignInViewController: UIViewController, GIDSignInUIDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().signInSilently()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signOut(sender: AnyObject) {
        print("Sign out")
        GIDSignIn.sharedInstance().signOut()
        try! FIRAuth.auth()!.signOut()
    }

}
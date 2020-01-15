//
//  ViewController.swift
//  200113Firebase
//
//  Created by juan.alvarez on 13/01/2020.
//  Copyright © 2020 Juan Alvarez. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var mEmail: UITextField!
    @IBOutlet weak var mPassword: UITextField!
    
    var handle: AuthStateDidChangeListenerHandle?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        handle = Auth.auth().addStateDidChangeListener{
            (auth, user) in
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        Auth.auth().removeStateDidChangeListener(self.handle!)
    }
    
    

    @IBAction func btnLogin(_ sender: Any) {
    }
    
    @IBAction func btnRegister(_ sender: Any) {
    }
    
    
}


//
//  LoginVC.swift
//  TraveliOS
//
//  Created by Biken Maharjan on 7/14/18.
//  Copyright © 2018 Biken Maharjan. All rights reserved.
//

import UIKit
import Firebase

class LoginVC:UIViewController{

    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnLogin(_ sender: Any) {
        
        guard let email = tfEmail.text,
        email != "",
        let password = tfPassword.text,
            password != "" else{
            print("Error")
            return
        }
        
        
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            guard error == nil else {return}
            print(result?.user.email)
            
            let sb = UIStoryboard(name: "Home", bundle: nil)
            let vc = sb.instantiateViewController(withIdentifier: "tabId")
            self.present(vc, animated: true, completion: nil)
            
            
        }
        
        
    }
}
//MARK:- Action
extension LoginVC{
    
    
}

//
//  SignUp.swift
//  TraveliOS
//
//  Created by Biken Maharjan on 7/14/18.
//  Copyright © 2018 Biken Maharjan. All rights reserved.
//

import UIKit
import Firebase


class SignUpVC:UIViewController{
    
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func dismiss(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func signUp(_ sender: Any) {
        
        guard let email = tfEmail.text,
        email != "",
        let password = tfPassword.text,
            password != "" else {return}
        
        
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            
            guard let error = error
                else {
                
                    print("User Created")
                    let sb = UIStoryboard(name: "Home", bundle: nil)
                    let vc = sb.instantiateViewController(withIdentifier: "HomeId")
                    self.present(vc, animated: true, completion: nil)
                    
                    return
                 }
            
            print(error.localizedDescription)
          
            
        }
        
    }
}

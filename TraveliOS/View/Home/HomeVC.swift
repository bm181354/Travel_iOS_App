//
//  HomeVC.swift
//  TraveliOS
//
//  Created by Biken Maharjan on 7/15/18.
//  Copyright © 2018 Biken Maharjan. All rights reserved.
//

import UIKit
import Firebase

// extend as navbar
class HomeVC:UIViewController{
    
    @IBOutlet weak var lbName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let id = Auth.auth().currentUser?.uid
        lbName.text = Auth.auth().currentUser?.email
    }
    
    @IBAction func signOut(_ sender: Any) {
        
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            
            let sb = UIStoryboard(name: "SignUp_Login", bundle: nil)
            let LoginVC = sb.instantiateViewController(withIdentifier: "loginId")
            self.present(LoginVC, animated: false, completion: nil)
            
            
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        
        
    }
    
    
    
    
}

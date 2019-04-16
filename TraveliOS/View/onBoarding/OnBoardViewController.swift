//
//  ViewController.swift
//  TraveliOS
//
//  Created by Biken Maharjan on 7/6/18.
//  Copyright © 2018 Biken Maharjan. All rights reserved.
//

import UIKit
import Firebase
//import paper_onboarding


// MARK: Does onboarding or else go to login
class OnBoardViewController: UIViewController {

    @IBOutlet weak var btnGetStarted: UIButton!
    @IBOutlet weak var onBoardingView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnGetStartAction(_ sender: Any) {
        
        // segue to Singup_login
        let sb = UIStoryboard(name: "SignUp_Login", bundle: nil)
        let LoginVC = sb.instantiateViewController(withIdentifier: "loginId")
        self.present(LoginVC, animated: true, completion: nil)
        
    }
}


//(informationImage: UIImage, title: String, description: String, pageIcon: UIImage, color: UIColor, titleColor: UIColor, descriptionColor: UIColor, titleFont: UIFont, descriptionFont: UIFont)

extension OnBoardViewController{
    
}


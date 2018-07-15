//
//  ViewController.swift
//  TraveliOS
//
//  Created by Biken Maharjan on 7/6/18.
//  Copyright © 2018 Biken Maharjan. All rights reserved.
//

import UIKit
import Firebase
import paper_onboarding


// MARK: Does onboarding or else go to login
class OnBoardViewController: UIViewController {

    @IBOutlet weak var btnGetStarted: UIButton!
    @IBOutlet weak var onBoardingView: PaperOnboarding!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onBoardingView.dataSource = self
        onBoardingView.delegate = self
        
    }

    @IBAction func btnGetStartAction(_ sender: Any) {
        
        // segue to Singup_login
        let sb = UIStoryboard(name: "SignUp_Login", bundle: nil)
        let LoginVC = sb.instantiateViewController(withIdentifier: "loginId")
        self.present(LoginVC, animated: true, completion: nil)
        
    }
}


//(informationImage: UIImage, title: String, description: String, pageIcon: UIImage, color: UIColor, titleColor: UIColor, descriptionColor: UIColor, titleFont: UIFont, descriptionFont: UIFont)

extension OnBoardViewController:PaperOnboardingDataSource,PaperOnboardingDelegate{
    
    func onboardingItemsCount() -> Int {
        return 3
    }
    
    func onboardingItem(at index: Int) -> OnboardingItemInfo {
        
        return[OnboardingItemInfo(informationImage: UIImage(named: "robot")!,
                                  title: "title",
                                  description: "description",
                                  pageIcon: UIImage(named: "robot")!,
                                  color: UIColor.yellow,
                                  titleColor: UIColor.white,
                                  descriptionColor: UIColor.white,
                                  titleFont: UIFont(name: "Helvetica", size: 24)!,
                                  descriptionFont: UIFont(name: "Helvetica", size: 20)!),
               
               OnboardingItemInfo(informationImage: UIImage(named: "robot")!,
                                  title: "title",
                                  description: "description",
                                  pageIcon: UIImage(named: "robot")!,
                                  color: UIColor.purple,
                                  titleColor: UIColor.white,
                                  descriptionColor: UIColor.white,
                                  titleFont: UIFont(name: "Helvetica", size: 24)!,
                                  descriptionFont: UIFont(name: "Helvetica", size: 20)!),
               
               OnboardingItemInfo(informationImage: UIImage(named: "robot")!,
                                  title: "title",
                                  description: "description",
                                  pageIcon: UIImage(named: "robot")!,
                                  color: UIColor.yellow,
                                  titleColor: UIColor.white,
                                  descriptionColor: UIColor.white,
                                  titleFont: UIFont(name: "Helvetica", size: 24)!,
                                  descriptionFont: UIFont(name: "Helvetica", size: 20)!)][index]
    }
    
    
    func onboardingConfigurationItem(_ item: OnboardingContentViewItem, index: Int){
        
    }
 
    func onboardingWillTransitonToIndex(_ index: Int){
        print("\(index)")
        if index == 1 {
            if (self.btnGetStarted.alpha == 1) {
                   UIView.animate(withDuration: 0.5) {
                    self.btnGetStarted.alpha = 0
                }
            }
        }
    }
    
    func onboardingDidTransitonToIndex(_ index: Int){
        print(index)
        if index == 2 {
            UIView.animate(withDuration: 0.5) {
                print("Llol")
                self.btnGetStarted.alpha = 1
            }
        }
    }
    
    
}
// Callbacks [Events]
extension OnBoardViewController{
    
}


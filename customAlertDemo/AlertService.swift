//
//  AlertService.swift
//  customAlertDemo
//
//  Created by Abhishek Jangid on 16/02/19.
//  Copyright © 2019 Abhishek Jangid. All rights reserved.
//

import UIKit

class AlertService {
    
    func alert(title: String, body: String, buttonTitle: String, completion: @escaping () -> Void) -> AlertViewController {
        
        let storyboard = UIStoryboard(name: "AlertStoryboard", bundle: .main)
        
        let alertVC = storyboard.instantiateViewController(withIdentifier: "AlertViewController") as! AlertViewController
        
        alertVC.alertTitle = title
        
        alertVC.alertBody = body
        
        alertVC.actionButtonTitle = buttonTitle
        
        alertVC.buttonAction = completion
        
        return alertVC
    }
}

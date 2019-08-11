//
//  AlertViewController.swift
//  customAlertDemo
//
//  Created by Abhishek Jangid on 16/02/19.
//  Copyright © 2019 Abhishek Jangid. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblBody: UILabel!
    @IBOutlet weak var actionButton: UIButton!
    
    var alertTitle = String()
    
    var alertBody = String()
    
    var actionButtonTitle = String()
    
    var buttonAction: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }
    
    fileprivate func setupView()
    {
        lblTitle.text = alertTitle
        lblBody.text = alertBody
        actionButton.setTitle(actionButtonTitle, for: .normal)
        
    }
    
    @IBAction func btnCancelPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func btnActionPressed(_ sender: UIButton) {
        dismiss(animated: true)
        
        buttonAction?()
    }
    
}

//
//  ViewController.swift
//  DropDownMenu1
//
//  Created by 탁은주 on 2018. 4. 15..
//  Copyright © 2018년 TEJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var selectMenu: UIButton!
    @IBOutlet var foodItems: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectMenu.layer.cornerRadius = selectMenu.frame.height / 2.0
        
        foodItems.forEach{ (foodButton) in
            foodButton.layer.cornerRadius = foodButton.frame.height / 2.0
            foodButton.isHidden = true
        }
    }
    
    @IBAction func selectMenuPressedAction(_ sender: UIButton) {
        foodItems.forEach{ (foodButton) in
            UIView.animate(withDuration: 0.3, animations: { foodButton.isHidden = !foodButton.isHidden
                self.view.layoutIfNeeded()
            })
    }
    }
    
    @IBAction func foodPressedAction(_ sender: UIButton) {
        
    }
    
}

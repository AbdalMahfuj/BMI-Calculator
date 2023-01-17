//
//  CalculateBMIViewViewController.swift
//  BMI Calculator
//
//  Created by MAHFUJ on 11/12/22.
//  Copyright © 2022 MAHFUJ All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiVal : String?
    @IBOutlet weak var bmiLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiVal
    }
    
    
    @IBAction func reCalculateBtn(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    

}

//
//  ViewController.swift
//  BMI Calculator
//
//  Created by MAHFUJ on 11/12/22.
//  Copyright © 2022 MAHFUJ All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var bmi : String?
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlide: UISlider!
    @IBOutlet weak var heightSlide: UISlider!
    
    var bmicalculateBrain = BMICalculateBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func heightSlider(_ sender: UISlider) {
                //print(String(format: "%.2f", sender.value)+"m")
        heightLabel.text = String(format: "%.2f", sender.value)+"m" 
    }
    
    
    @IBAction func weightSlider(_ sender: UISlider) {
                //print(String(format: "%.0f", sender.value)+"kg")
                weightLabel.text =  String(format: "%.0f", sender.value)+"kg"
    }
    

    
    @IBAction func calculateBtn(_ sender: UIButton) {
        let height = (heightSlide.value); print("given \(height)m")
        let weight = (weightSlide.value); print("given \(weight)kg")
        
        bmicalculateBrain.calculatebmi(h: height, w: weight)
        
        
        bmi = bmicalculateBrain.getBMI(h: height, w: weight); print("cal \( pow(height, 2))m²")
        print("cal \(bmi!)")
        //bmiValue = String(format: "%.2f", bmi)
        print(bmi!)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToResult") {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiVal = bmi
        }
    }
    
    
    
}


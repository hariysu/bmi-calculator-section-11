//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var bmiValue: Float?

    @IBOutlet weak var heightLabel2: UILabel!
    @IBOutlet weak var weightLabel2: UILabel!
    @IBOutlet weak var heightSlider2: UISlider!
    @IBOutlet weak var weightSlider2: UISlider!
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel2.text = "\(String(format: "%.2f", sender.value))m"

    }
    

    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel2.text = "\(Int(sender.value))Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        bmiValue = weightSlider2.value / pow(heightSlider2.value, 2)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = String(format: "%.1f", bmiValue!)
        }
    }
}


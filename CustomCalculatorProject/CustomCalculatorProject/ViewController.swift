//
//  ViewController.swift
//  CustomCalculatorProject
//
//  Created by Smita Kankayya on 15/05/24.
//

import UIKit
import CustomCalculatorFramework

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    var calculator = CustomCalculatorFramework()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        calculator.performOperation(tag: sender.tag, resultLabel: &resultLabel.text!)
    }
}

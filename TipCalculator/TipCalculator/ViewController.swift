//
//  ViewController.swift
//  TipCalculator
//
//  Created by Cean Manzano on 8/28/19.
//  Copyright © 2019 Cean Manzano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var percentControl: UISegmentedControl!
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // calculating necessary values for tip and total
        let tipPercent = [0.1, 0.15, 0.20]
        let bill = Double(inputField.text!) ?? 0
        let tip = (bill * tipPercent[percentControl.selectedSegmentIndex])
        let total = bill + tip

        // updating UI elements
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}


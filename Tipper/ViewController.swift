//
//  ViewController.swift
//  Tipper
//
//  Created by Sangeetha Sasikumar on 12/4/16.
//  Copyright © 2016 Sangeetha Sasikumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tipLabel: UILabel!
    
    @IBOutlet var billField: UITextField!
    
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func CalculateTip(sender: AnyObject) {
        let tipPercentages=[0.12, 0.18, 0.2, 0.25]
        
        let bill=Double(billField.text!) ?? 0
        let tip=bill*tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill+tip
        
        tipLabel.text=String(format: "$%.2f",tip)
        totalLabel.text=String(format: "$%.2f", total)
        
        
    }
}


//
//  ViewController.swift
//  IOSPrework
//
//  Created by Efaz on 5/9/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillTextField: UITextField!
    @IBOutlet weak var PeopleTextField: UITextField!
    @IBOutlet weak var TipPercentageTextField: UITextField!

    @IBOutlet weak var TotalCostLabel: UILabel!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var PerPersonLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        BillTextField.becomeFirstResponder()
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(BillTextField.text!) ?? 0
        let tipPercentageRaw = Double(TipPercentageTextField.text!) ?? 0
        let tipPercentage = tipPercentageRaw / 100
        let people = Double(PeopleTextField.text!) ?? 1
        let tip = bill * tipPercentage
        let total = bill + tip
        let perPersonPay = total / people
        
        TotalCostLabel.text = String(format: "$%.2f", total)
        TipLabel.text = String(format: "$%.2f", tip)
        PerPersonLabel.text = String(format: "$%.2f", perPersonPay)
    }
}


//
//  CurrencyViewController.swift
//  IOSPrework
//
//  Created by Efaz on 5/12/21.
//

import UIKit

class CurrencyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        current.addTarget(self, action: #selector(myTextFieldDidChange), for: .editingChanged)
    }
    

    @objc func myTextFieldDidChange(_ textField: UITextField) {
        if let amountString = current.text?.currentInputFormatting() {
            current.text = amountString
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

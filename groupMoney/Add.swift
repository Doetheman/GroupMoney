//
//  Add.swift
//  groupMoney
//
//  Created by Apple on 5/23/18.
//  Copyright © 2018 Keishon Smith. All rights reserved.
//


import UIKit

class Add: UIViewController {
    
    @IBOutlet weak var proceed: UIButton!
    @IBOutlet weak var creditCardTextField: UITextField!
    @IBOutlet weak var debitCardTextField: UITextField!
    @IBOutlet weak var balanceAmountLabel: UILabel!
    var amount: Double = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        balanceAmountLabel.text = "$0.00"
        proceed.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func confirmButton(_ sender: Any) {
        
        guard let credit = self.creditCardTextField.text, let debit = self.debitCardTextField.text else {
            return
        }
        //public segue
        let creditNumber = Double(credit)
        let debitNumber = Double(debit)
        
        amount += creditNumber!
        amount += debitNumber!
        balanceAmountLabel.text = "\(amount)"
        print(balanceAmountLabel.text)
        proceed.isHidden = false
        // make
    }
    
}

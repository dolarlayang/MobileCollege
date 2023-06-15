//
//  ViewController.swift
//  MortgageCalculator
//
//  Created by mac07 on 6/5/23.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mortgageCalc.text = "Mortgage Calculator"
        // Do any additional setup after loading the view.
    }

    //Variables
    @IBOutlet weak var homeValue: UITextField!
    @IBOutlet weak var downPayment: UITextField!
    @IBOutlet weak var result: UITextField!
    @IBOutlet weak var mortgageCalc: UILabel!
    
    var num1 = 0
    var num2 = 0
    var sum: Int = 0
    
    //Functions
    @IBAction func nextTapped(_ sender: UIButton) {
        print("Button pressed.") //Debugging purposes
        num1 = Int(homeValue.text ?? "0")!
        num2 = Int(downPayment.text ?? "0")!
        sum = num1 - num2 //Total is recorded in the text box Loan Amount
        print(sum) //Verifying if num1 & 2 was added.
        result.text = String(sum)
    }
    
//    @IBAction func nextTapped(_ sender: Any) {
//        // Calculations are performed when pressed.
//        // result = homeValue - downPayment
//        num1 = Int(homeValue.text ?? "0")!
//        num2 = Int(downPayment.text ?? "0")!
//        print("Button pressed.")
//        }
    


}


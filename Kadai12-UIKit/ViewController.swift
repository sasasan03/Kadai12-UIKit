//
//  ViewController.swift
//  Kadai12-UIKit
//
//  Created by sako0602 on 2023/06/18.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var total: UILabel!
    
    func parce(textField: UITextField?) -> Int {
        let num = Int(textField?.text ?? "") ?? 0
        return num
    }
    
    @IBAction func calcButtonAction(_ sender: Any) {
        let num1 = Float(parce(textField: textField1))
        let num2 = Float(parce(textField: textField2))
        let taxNum: Float = (num2 / 100) + 1
        self.total.text = String(num1 * taxNum)
    }
    
}


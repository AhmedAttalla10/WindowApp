//
//  ViewController.swift
//  windowApp
//
//  Created by hima attalla on 9/19/19.
//  Copyright © 2019 ahmed attalla. All rights reserved.
//

import UIKit

class MainVc: UIViewController {
    @IBOutlet weak var priceTxt: CurrencyTextField!
    
    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var resultTxt: UILabel!
    @IBOutlet weak var hoursTxt: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calcBtn.setTitle("calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVc.calculate), for: .touchUpInside)
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resultTxt.isHidden = true
        hoursTxt.isHidden = true
        
    }

    @objc func calculate() {
        if let pricetxt = priceTxt.text, let wagetxt = wageTxt.text {
            if let price = Double(pricetxt), let wage = Double(wagetxt) {
            resultTxt.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
                priceTxt.text = "$" + " " + "\(price)"
                wageTxt.text = "$" + " " + "\(wage)"
                view.endEditing(true)
                resultTxt.isHidden = false
                hoursTxt.isHidden = false
                
        }
        }
        
    }
    
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        priceTxt.text = ""
        wageTxt.text = ""
        resultTxt.isHidden = true
        hoursTxt.isHidden = true 
    }
    
}


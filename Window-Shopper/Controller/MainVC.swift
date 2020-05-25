//
//  ViewController.swift
//  Window-Shopper
//
//  Created by Mahmoud Nasser on 5/23/20.
//  Copyright © 2020 Mahmoud Nasser. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

// MARK:- IBoutlets
    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    @IBOutlet weak var workingHoursLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!

// MARK:- Variables
    var wage = Wage()

// MARK:- App life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showResultLbls(shouldShow: false)
        setCalcBtn()
        
    }

// MARK:- Helper Functions
    fileprivate func setCalcBtn() {
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        
        calcBtn.backgroundColor = #colorLiteral(red: 0.6953918147, green: 0.2884430115, blue: 0.08815822282, alpha: 1)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.addTarget(self, action: #selector(self.calculate), for: .touchUpInside)

        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
    }

    fileprivate func showResultLbls(shouldShow: Bool) {
        workingHoursLbl.isHidden = !shouldShow
        hoursLbl.isHidden = !shouldShow
    }

    fileprivate func clearResultLbls() {
        workingHoursLbl.text = ""
    }

// MARK:- IBActions
    @objc func calculate() {
        guard let wage = wageTxt.text,
            let price = priceTxt.text
            else { return }

        guard let hourlywage = Double(wage),
            let itemPrice = Double(price)
            else { return }

        view.endEditing(true)

        showResultLbls(shouldShow: true)

        workingHoursLbl.text = String(self.wage.getHours(forHourlyWage: hourlywage, itemPrice: itemPrice))
    }

    @IBAction func clearCalculation(_ sender: UIButton) {
        showResultLbls(shouldShow: false)
        clearResultLbls()
    }

}


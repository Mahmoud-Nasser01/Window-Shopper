//
//  CurrencyTextField.swift
//  Window-Shopper
//
//  Created by Mahmoud Nasser on 5/23/20.
//  Copyright © 2020 Mahmoud Nasser. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))

        currencyLbl.textColor = .black
        currencyLbl.textAlignment = .center
        currencyLbl.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        currencyLbl.layer.cornerRadius = 5.0

        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
//        formatter.currencySymbol = .init("&")

        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
        
    }


    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()

        customizeView()

    }


    private func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center

        if let placerHolder = placeholder {
            attributedPlaceholder = NSAttributedString(string: placerHolder, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
        }

        textColor = .white
    }

}

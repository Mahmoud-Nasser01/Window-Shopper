//
//  Wage.swift
//  Window-Shopper
//
//  Created by Mahmoud Nasser on 5/25/20.
//  Copyright © 2020 Mahmoud Nasser. All rights reserved.
//

import Foundation

class Wage {
    func getHours(forHourlyWage wage: Double, itemPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}

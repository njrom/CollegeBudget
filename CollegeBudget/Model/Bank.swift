//
//  Bank.swift
//  CollegeBudget
//
//  Created by Nicholas Romano on 11/29/18.
//  Copyright © 2018 Nicholas Romano. All rights reserved.
//

import Foundation

class Bank {
    var budgets = [Budget]()
    
    func addBudget(name: String, amount: Double) {
        budgets.append(Budget(name: name, amount: amount))
    }
}

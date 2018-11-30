//
//  Transaction.swift
//  CollegeBudget
//
//  Created by Nicholas Romano on 11/29/18.
//  Copyright © 2018 Nicholas Romano. All rights reserved.
//

import Foundation

enum TransactionType {
    case income
    case expense
}


class Transaction {
    var amount: Double
    var type : TransactionType
    var name : String
    
    init(name: String, type: TransactionType, amount: Double) {
        self.name = name
        self.type = type
        self.amount = amount
    }
    
}



//
//  Transaction.swift
//  MoneyManager
//
//  Created by MAC on 13/01/23.
//

import Foundation

struct Transaction {
    
    var type: TransactionType
    var account: Account
    var amount: Double
    var labels: [String]
    var description: String
    var date: Date
}

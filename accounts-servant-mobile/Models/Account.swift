//
//  Account.swift
//  accounts-servant-mobile
//
//  Created by Jacques Adams on 5/17/25.
//

import Foundation

struct Account {
    var id: String = UUID().uuidString
    var name: String = "default"
    var moneyIn : Double = 0.0
    var moneyOut: Double = 0.0
}

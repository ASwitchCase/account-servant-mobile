//
//  Transaction.swift
//  accounts-servant-mobile
//
//  Created by Jacques Adams on 5/17/25.
//

import Foundation

struct Transaction : Identifiable,Hashable {
    var id: UUID = UUID()
    var date: String = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy"
        return dateFormatter.string(from: Date())
    }()
    
    var description: String = ""
    var code: TransactionCode = .C
    var fromBoxes: Account = Account(id: UUID().uuidString, name: "Receipts from boxes")
    var primaryAccount: Account = Account(id: UUID().uuidString, name: "Primary Account")
    var secondaryAccount: Account = Account(id: UUID().uuidString, name: "Secondary Account")

}

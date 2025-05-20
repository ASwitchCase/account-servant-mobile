//
//  Transaction.swift
//  accounts-servant-mobile
//
//  Created by Jacques Adams on 5/17/25.
//

import Foundation

struct Transaction : Identifiable {
    var id: UUID = UUID()
    var date: String = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy"
        return dateFormatter.string(from: Date())
    }()
    
    var description: String = ""
    var code: TransactionCode = .C
    var receipts: Account = Account(id: UUID().uuidString, name: "Receipts")
    var primaryAccount: Account = Account(id: UUID().uuidString, name: "Primary")
    var secondaryAccount: Account? = Optional.none

}

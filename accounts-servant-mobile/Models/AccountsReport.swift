//
//  AccountsReport.swift
//  accounts-servant-mobile
//
//  Created by Jacques Adams on 5/25/25.
//

import Foundation

struct AccountsReport: Identifiable,Hashable {
    var id: UUID = UUID()
    var transactions: [Transaction]
    var congregation: String
    var city: String
    var state: String
    var month: String
    var year: String

    var endingBalanceOnBankStatement: Double = 0.0
    var receiptsBalanceForward: Double = 0.0
    var primaryAccountBalanceForward: Double = 0.0
    var secondaryAccountBalanceForward: Double = 0.0
    
    func getTotalReceiptsIn() -> Double {
        return 0.0
    }
    
    func getTotalReceiptsOut() -> Double {
        return 0.0
    }
    
    func getTotalPrimaryIn() -> Double {
        return 0.0
    }
    
    func getTotalPrimaryOut() -> Double {
        return 0.0
    }
    
    func getTotalSecondaryIn() -> Double {
        return 0.0
    }
    
    func getTotalSecondaryOut() -> Double {
        return 0.0
    }
    
    func getTotalFundsOnHand() -> Double {
        return 0.0
    }
}

//
//  AccountsServantState.swift
//  accounts-servant-mobile
//
//  Created by Jacques Adams on 5/27/25.
//

import Foundation

class AccountsServantState : ObservableObject {
    @Published var reports: [AccountsReport]
    @Published var receiptsBalance: Double
    @Published var primaryAccountBalance: Double
    @Published var secondaryAccountBalance: Double
    
    @Published var publisher : String
    @Published var city : String
    @Published var state : String
    @Published var congregation : String
    
    init(reports: [AccountsReport],
         receiptsBalance: Double,
         primaryAccountBalance: Double,
         secondaryAccountBalance: Double,
         publisher: String,
         city: String, state: String, congregation: String) {
        
        self.reports = reports
        self.receiptsBalance = receiptsBalance
        self.primaryAccountBalance = primaryAccountBalance
        self.secondaryAccountBalance = secondaryAccountBalance
        self.publisher = publisher
        self.city = city
        self.state = state
        self.congregation = congregation
    }
}

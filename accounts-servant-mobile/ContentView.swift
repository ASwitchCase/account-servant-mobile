//
//  ContentView.swift
//  accounts-servant-mobile
//
//  Created by Jacques Adams on 5/14/25.
//

import SwiftUI

struct ContentView: View {
    var state: AccountsServantState = AccountsServantState(
        reports: [
            AccountsReport(
                id: UUID(),
                transactions: [
                    Transaction(
                        description:"KH construction",
                        code:.C,
                    ),
                    Transaction(
                        description:"World Wide Work",
                        code:.W
                    ),
                    Transaction(
                        description:"Bank Deposit",
                        code:.D
                    ),
                    Transaction(
                        description:"Check #1234",
                        code:.E
                    )
                ],
                congregation: "Central English Congregation",
                city: "Jersey City",
                state: "New Jersey",
                month: "March",
                year: "2025"
            )
        ],
        receiptsBalance: 0.0,
        primaryAccountBalance: 0.0,
        secondaryAccountBalance: 0.0,
        publisher: "Jacques Adams",
        city: "Jersey City",
        state: "New Jersey",
        congregation: "Central English Congregation"
    )
    
    var body: some View {
        ReportsPage(state: state)
    }
}

#Preview {
    ContentView()
}

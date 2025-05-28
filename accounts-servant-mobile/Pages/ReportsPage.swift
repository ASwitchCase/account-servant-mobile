//
//  ReportsPage.swift
//  accounts-servant-mobile
//
//  Created by Jacques Adams on 5/26/25.
//

import Foundation
import SwiftUI
import SwiftUICore

struct ReportsPage: View {
    var reports : [AccountsReport] = [
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
    ]
    var body: some View {
        VStack {
                NavigationStack {
                    List {
                        Section ("Reports"){
                            ForEach(reports, id:\.id) { report in
                                NavigationLink(destination: TransactionsPage(report: report)) {
                                    Text("\(report.month) \(report.year)")
                                }
                            }
                        }
                    }
                }
        }
    }
}

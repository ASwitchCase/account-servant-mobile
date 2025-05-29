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
    @StateObject var state : AccountsServantState
    var body: some View {
        VStack {
                NavigationStack {
                    List {
                        HStack {
                            GroupBox(label:Label("Balance", systemImage: "1.brakesignal")){
                                Text("\(state.primaryAccountBalance, format: .currency(code: "USD"))")
                                    .font(.footnote)
                            }.frame(width: 150)
                            GroupBox(label:Label("Balance", systemImage: "hand.palm.facing")){
                                Text("\(state.receiptsBalance, format: .currency(code: "USD"))")
                                    .font(.footnote)
                            }.frame(width: 150)
                        }
                        
                        Section ("Reports"){
                            
                            Button("Add Report") {
                                print("pressed")
                            }.buttonStyle(DefaultButtonStyle())
                            
                            ForEach(state.reports, id:\.id) { report in
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

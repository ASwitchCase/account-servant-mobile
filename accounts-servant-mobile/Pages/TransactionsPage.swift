//
//  TransactionsPage.swift
//  accounts-servant-mobile
//
//  Created by Jacques Adams on 5/20/25.
//

import SwiftUICore
import SwiftUI

struct TransactionsPage : View {
    
    @State var report: AccountsReport
    @State private var showAddTransactionSheet: Bool = false
    
    var body: some View {
        VStack {
                Button("Add Transaction") {
                    showAddTransactionSheet = true
                }.buttonStyle(DefaultButtonStyle())
                
                List{
                    Section("Transactions"){
                        ForEach(report.transactions, id:\.id) { transaction in
                            NavigationLink(destination: AccountView(transaction: transaction)){
                                TransactionView(transaction: transaction)
                            }
                        }
                    }
                }
            }
            .frame(maxHeight:900)
            .scrollContentBackground(.hidden)
            .sheet(isPresented:$showAddTransactionSheet){
                AddTransactionSheetView()
            }
    }
}

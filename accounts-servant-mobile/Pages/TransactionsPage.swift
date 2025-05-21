//
//  TransactionsPage.swift
//  accounts-servant-mobile
//
//  Created by Jacques Adams on 5/20/25.
//

import SwiftUICore
import SwiftUI

struct TransactionsPage : View {
    @State private var transactions: [Transaction] = [
        Transaction(
            description:"KH construction",
            code:.C
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
    ]
    
    var body: some View {
        VStack {
            
            Button("Add Transaction") {
                print("pressed")
            }.buttonStyle(DefaultButtonStyle())
            
            NavigationStack {
                List{
                    Section("Transactions"){
                        ForEach(transactions, id:\.id) { transaction in
                            NavigationLink(value: transaction){
                                TransactionView(transaction: transaction)
                            }
                        }
                    }
                }
                .navigationTitle("March Transactions")
                .navigationDestination(for: Transaction.self){ Transaction in
                    Text("\(Transaction.description)")
                }
            }
            .background {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(.black, lineWidth: 2)
                    .foregroundColor(.white)
            }
            .frame(maxHeight:500)
            .scrollContentBackground(.hidden)
        }
        .padding(5)
    }
}

//
//  ContentView.swift
//  accounts-servant-mobile
//
//  Created by Jacques Adams on 5/14/25.
//

import SwiftUI

struct ContentView: View {
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
            }
            List(transactions){ transaction in
                TransactionView(transaction: transaction)
            }.scrollContentBackground(.hidden)
        }.padding(5)
    }
}

#Preview {
    ContentView()
}

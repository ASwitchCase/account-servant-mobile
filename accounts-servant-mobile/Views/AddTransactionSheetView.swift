//
//  AddTransactionSheetView.swift
//  accounts-servant-mobile
//
//  Created by Jacques Adams on 5/29/25.
//
import SwiftUI

struct AddTransactionSheetView: View {
    // To dismiss the sheet, use the @Environment(\.dismiss) property wrapper
    @Environment(\.dismiss) var dismiss
    @State var description: String = ""
    @State var code: TransactionCode = .C
    
    @State var primaryIn: String = ""
    @State var primaryOut: String = ""
    
    @State var receiptsIn: String = ""
    @State var receiptsOut: String = ""


        var body: some View {
            NavigationView { // Often, sheets contain their own navigation bar
                VStack {
                    Form {
                        TextField(text: $description, prompt: Text("Description")) {}
                        Picker("Transaction Code",selection: $code){
                            Text("C: Contribution").tag(TransactionCode.C)
                            Text("W: World Wide Work").tag(TransactionCode.W)
                            Text("D: Deposit").tag(TransactionCode.D)
                            Text("E: Expense").tag(TransactionCode.E)
                        }
                    }
                    
                    Form {
                        Section ("Primary Account"){
                            TextField(text: $primaryIn, prompt: Text("in")) {}
                            TextField(text: $primaryOut, prompt: Text("out")) {}
                        }
                    }
                    
                    Form {
                        Section("Receipts") {
                            TextField(text: $receiptsIn, prompt: Text("in")) {}
                            TextField(text: $receiptsOut, prompt: Text("out")) {}
                        }
                    }

                    Button("Add Transaction") {
                        dismiss() // This will close the sheet
                    }
                    .buttonStyle(DefaultButtonStyle())
                    .padding(.top, 20)
                }
                .navigationTitle("Add Transaction")
                .toolbar { // Add a dismiss button to the navigation bar
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Close") {
                            dismiss()
                        }
                    }
                }
            }
        }
}

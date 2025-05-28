//
//  AccountView.swift
//  accounts-servant-mobile
//
//  Created by Jacques Adams on 5/23/25.
//

import SwiftUICore
import SwiftUI

struct AccountView : View {
    @State var transaction: Transaction
    
    var body: some View {
        VStack {
            Text("\(transaction.description)")
                .font(.title)
            Text("\(transaction.date)")
                .font(.subheadline)
        }
       
        List {
            HStack {
                Circle()
                    .frame(width: 60)
                    .overlay(
                        Image(systemName: "hand.palm.facing")
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                    )
                
                VStack(alignment: .leading){
                    Text("\(transaction.fromBoxes.name)")
                        .font(.title2)
                    
                    HStack{
                        Text("+ \(transaction.fromBoxes.moneyIn, format: .currency(code: "USD"))")
                            .font(.footnote)
                            .foregroundStyle(.green)
                        Text("- \(transaction.fromBoxes.moneyOut, format: .currency(code: "USD"))")
                            .font(.footnote)
                            .foregroundStyle(.red)
                    }
                }.padding(10)
            }
            
            HStack {
                Circle()
                    .frame(width: 60)
                    .overlay(
                        Image(systemName: "1.brakesignal")
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                    )
                
                VStack(alignment: .leading){
                    Text("\(transaction.primaryAccount.name)")
                        .font(.title2)
                    
                    HStack{
                        Text("+ \(transaction.primaryAccount.moneyIn, format: .currency(code: "USD"))")
                            .font(.footnote)
                            .foregroundStyle(.green)
                        Text("- \(transaction.primaryAccount.moneyOut, format: .currency(code: "USD"))")
                            .font(.footnote)
                            .foregroundStyle(.red)
                    }
                }.padding(10)
            }
            
            HStack {
                Circle()
                    .frame(width: 60)
                    .overlay(
                        Image(systemName: "2.brakesignal")
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                    )
                
                VStack(alignment: .leading){
                    Text("\(transaction.secondaryAccount.name)")
                        .font(.title2)
                    
                    HStack{
                        Text("+ \(transaction.secondaryAccount.moneyIn, format: .currency(code: "USD"))")
                            .font(.footnote)
                            .foregroundStyle(.green)
                        Text("- \(transaction.secondaryAccount.moneyOut, format: .currency(code: "USD"))")
                            .font(.footnote)
                            .foregroundStyle(.red)
                    }
                }.padding(10)
            }
        }
    }
}

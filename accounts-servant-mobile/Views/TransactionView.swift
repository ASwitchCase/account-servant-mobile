//
//  TransactionView.swift
//  accounts-servant-mobile
//
//  Created by Jacques Adams on 5/20/25.
//

import SwiftUICore
import SwiftUI

struct TransactionView: View {
    @State var transaction: Transaction
    
    var body: some View {
        HStack{
            
            switch transaction.code {
                case .C:
                Circle()
                    .frame(width: 50)
                    .overlay(
                        Image(systemName: "dollarsign.ring")
                            .font(.system(size: 44))
                            .foregroundColor(.white)
                    )
                case .D:
                Circle()
                    .frame(width: 50)
                    .overlay(
                        Image(systemName: "bahtsign.bank.building")
                            .font(.system(size: 44))
                            .foregroundColor(.white)
                    )
                case .E:
                Circle()
                    .frame(width: 50)
                    .overlay(
                        Image(systemName: "dollarsign.circle")
                            .font(.system(size: 44))
                            .foregroundColor(.white)
                    )
                case .W:
                Circle()
                    .frame(width: 50)
                    .overlay(
                        Image(systemName: "globe.americas")
                            .font(.system(size: 44))
                            .foregroundColor(.white)
                    )
            }
            
            VStack(alignment: .leading){
                Text("Transaction:\(transaction.description)")
                    .font(.headline)
                Text("\(transaction.date)")
                    .font(.subheadline)
            }.padding(5)
            
            Button(""){}
            
        }
    }
}

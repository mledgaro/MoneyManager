//
//  TransactionView.swift
//  MoneyManager
//
//  Created by MAC on 13/01/23.
//

import SwiftUI

struct TransactionView: View {
    
    @Binding var transaction: Transaction
    
    private var icon: String {
        switch transaction.type {
            case .income:
                return "square.and.arrow.down"
            case .outcome:
                return "square.and.arrow.up"
        }
    }
    
    var body: some View {
        
        HStack {
            
            Image(systemName: icon)
                .font(.largeTitle)
            
            VStack(alignment: .leading) {
                
                Text("\(transaction.account.name)")
                    .font(.title3)
                    .fontWeight(.semibold)
                Text("\(transaction.labels.joined(separator: ","))")
                    .font(.caption)
                Text("\(transaction.description)")
                    .font(.caption)
            }
            
            Spacer()
            
            Text("\(String(format: "$%.2f", transaction.amount))")
                .font(.largeTitle)
            
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        
    }
}

struct TransactionView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionView(
            transaction: .constant(Transaction(
                type: .outcome,
                account: Account(name: "Debit card", balance: 1000),
                amount: 10.0,
                labels: ["Food", "Restaurant"],
                description: "Dinner",
                date: Date.now
            )))
    }
}


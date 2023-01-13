//
//  AccountView.swift
//  MoneyManager
//
//  Created by MAC on 13/01/23.
//

import SwiftUI

struct AccountView: View {
    
    @Binding var account: Account
    
    var body: some View {
        HStack {
            Spacer()
            Text("\(account.name)")
            Spacer()
            Text("\(String(format: "$%.2f", account.balance))")
            Spacer()
        }
        .padding(.vertical, 10.0)
        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView(account: .constant(
            Account(
                name: "Account",
                balance: 0.0)))
    }
}

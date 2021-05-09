//
//  StoreInEnvironmentExample.swift
//  UIDesign
//
//  Created by joao camargo on 09/05/21.
//

import SwiftUI

struct StoreInEnvironmentExample: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @EnvironmentObject var accountManager: AccountManager
    
    var body: some View {
        VStack {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text("email \(accountManager.email)")
        }
    }
}


struct StoreInEnvironmentExample_Previews: PreviewProvider {
    static var previews: some View {
        StoreInEnvironmentExample().environmentObject(AccountManager())
    }
}

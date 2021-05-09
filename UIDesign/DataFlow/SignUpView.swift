//
//  SignUpView.swift
//  UIDesign
//
//  Created by joao camargo on 09/05/21.
//

import SwiftUI

struct SignUpView: View {
    
    @ObservedObject var accountManager = AccountManager()
    
    var body: some View {
        VStack(spacing: 15) {
            Text("Sign up").header2()
            
            TextField("email", text: $accountManager.email).textFieldStyle(RoundedBorderTextFieldStyle())
            SecureField("password", text:  $accountManager.password).textFieldStyle(RoundedBorderTextFieldStyle())
            SecureField("repeat password", text:  $accountManager.repeatPassword).textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                self.accountManager.makeAccount()
            }) {
                Text("Sign up!")
            }.buttonStyle(SimpleButtonStyle(isDisabled:  !accountManager.signUpAllowed))

            Text(accountManager.errorMessage).errorText()
        }.padding()
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

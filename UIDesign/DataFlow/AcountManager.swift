//
//  AcountManager.swift
//  UIDesign
//
//  Created by joao camargo on 09/05/21.
//

import Foundation
import Combine

class AccountManager: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var repeatPassword: String = ""
    @Published var signUpAllowed: Bool = false
    @Published var errorMessage: String = ""
    
    
    var subscriptions = Set<AnyCancellable>()
    
    
    init(){
//        $email.sink { value in
//            if value.count > 4 && value.contains("@") && value.contains("."){
//                self.signUpAllowed = true
//            }
//            else {
//                self.signUpAllowed = false
//            }
//            print("got new email \(value)")
//        }.store(in: &subscriptions)
        
        $email.combineLatest($password, $repeatPassword).map { (email, pass, repeatedPassowrd) -> Bool in
            if email.count > 4 && pass.count > 4 && pass == repeatedPassowrd {
                self.errorMessage = ""
                return true
            }
            else{
                self.errorMessage = "Error: user email"
                return false
            }
        }.assign(to: \.signUpAllowed, on: self).store(in: &subscriptions)
    }
    
    func makeAccount(){
        
    }
    
}

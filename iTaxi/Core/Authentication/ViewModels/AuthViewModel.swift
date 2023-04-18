//
//  AuthViewModel.swift
//  iTaxi
//
//  Created by Alexander Kozin on 19.04.2023.
//

import Foundation
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        userSession = Auth.auth().currentUser
    }
    
    func registerUser(withEmail email: String, password: String, fullname: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("Debug: Failed to sign up with error \(error.localizedDescription)")
                return
            }
            
            print("DEBUG: Registered user successfully")
            print("DEBUG: User id \(result?.user.uid)")
        }
    }
}

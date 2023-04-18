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
    
}

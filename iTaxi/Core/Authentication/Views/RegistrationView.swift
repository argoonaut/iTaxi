//
//  RegistrationView.swift
//  iTaxi
//
//  Created by Alexander Kozin on 18.04.2023.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var fullname = ""
    @State private var email = ""
    @State private var password = ""
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .font(.title)
                        .imageScale(.medium)
                        .padding()
                }
                
                Text("Create new account")
                    .font(.system(size: 40))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                    .frame(width: 250)
                
                Spacer()
                
                VStack {
                    VStack(spacing: 56) {
                        CustomInputFields(text: $fullname,
                                          title: "Full Name",
                                          placeholder: "Enter your name")
                        
                        CustomInputFields(text: $email,
                                          title: "Email Address",
                                          placeholder: "name@example.com")
                        
                        CustomInputFields(text: $password,
                                          title: "Create Password",
                                          placeholder: "Enter your password")
                    }
                    .padding(.leading)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        HStack {
                            Text("SIGN UP")
                                .foregroundColor(.black)
                            
                            Image(systemName: "arrow.right")
                                .foregroundColor(.black)
                        }
                        .frame(width: UIScreen.main.bounds.width - 32, height: 50)
                    }
                    .background(Color.white)
                    .cornerRadius(10)
                    
                    Spacer()
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}

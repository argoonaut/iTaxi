//
//  LoginView.swift
//  iTaxi
//
//  Created by Alexander Kozin on 18.04.2023.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.black)
                    .ignoresSafeArea()
                
                VStack {
                    
                    // MARK: Image and title
                    // TODO: Replace uber logo on my logo
                    
                    VStack {
                        // Image
                        Image("uber-app-icon")
                            .resizable()
                            .frame(width: 200, height: 200)
                        
                        // Title
                        Text("iTaxi")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                    
                    // MARK: Input fields
                    
                    VStack(spacing: 32) {
                        // Input field 1
                        CustomInputFields(text: $email,
                                          title: "Email Address",
                                          placeholder: "name@example.com")
                        
                        // Input field 2
                        CustomInputFields(text: $password,
                                          title: "Password",
                                          placeholder: "Enter your password",
                                          isSecureField: true)
                        
                        Button {
                            
                        } label: {
                            Text("Forgot Password ?")
                                .font(.system(size: 13, weight: .semibold))
                                .foregroundColor(.white)
                                .padding(.top)
                        }
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding(.horizontal)
                    .padding(.top, 12)
                                    
                    // MARK: Social sign in view
                    VStack {
                        // Dividers + text
                        HStack(spacing: 24) {
                            Rectangle()
                                .frame(width: 76, height: 1)
                                .foregroundColor(.white)
                                .opacity(0.5)
                            
                            Text("Sign in with social")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                            
                            Rectangle()
                                .frame(width: 76, height: 1)
                                .foregroundColor(.white)
                                .opacity(0.5)
                        }
                        // Sign up buttons
                        HStack(spacing: 24) {
                            Button {
                                
                            } label: {
                                Image("facebook-sign-in-icon")
                                    .resizable()
                                    .frame(width: 44, height: 44)
                            }

                            Button {
                                
                            } label: {
                                Image("google-sign-in-icon")
                                    .resizable()
                                    .frame(width: 44, height: 44)
                            }
                        }
                    }
                    .padding(.vertical)
                    
                    Spacer()
                    
                    // MARK: Sign in button
                    Button {
                        
                    } label: {
                        HStack {
                            Text("SIGN IN")
                                .foregroundColor(.black)
                            
                            Image(systemName: "arrow.right")
                                .foregroundColor(.black)
                        }
                        .frame(width: UIScreen.main.bounds.width - 32, height: 50)
                    }
                    .background(Color.white)
                    .cornerRadius(10)

                    
                    // MARK: Sign up button
                    Spacer()
                    
                    NavigationLink {
                        RegistrationView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        HStack {
                            Text("Dont't have an account ?")
                                .font(.system(size: 14))
                            
                            Text("Sign Up")
                                .font(.system(size: 14, weight: .semibold))
                        }
                        .foregroundColor(.white)
                    }
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

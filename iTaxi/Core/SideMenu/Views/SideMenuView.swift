//
//  SideMenuView.swift
//  iTaxi
//
//  Created by Alexander Kozin on 19.04.2023.
//

import SwiftUI

struct SideMenuView: View {
    
    private let user: User
    
    init(user: User) {
        self.user = user
    }
    
    var body: some View {
        VStack(spacing: 40) {
            // Header view
            VStack(alignment: .leading, spacing: 32) {
                // User info
                HStack {
                    Image("male-profile-photo")
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 64, height: 64)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text(user.fullname)
                            .font(.system(size: 16, weight: .semibold))
                        
                        Text(user.email)
                            .font(.system(size: 14))
                            .accentColor(Color.theme.primaryTextColor)
                            .opacity(0.77)
                    }
                }
                
                // Become a driver
                VStack(alignment: .leading, spacing: 16) {
                    Text("Do more with your account")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "dollarsign.square")
                            .font(.title2)
                            .imageScale(.medium)
                        
                        Text("Make Money Driving")
                            .font(.system(size:16, weight: .semibold))
                            .padding(6)
                    }
                }
                
                // foreground - separator wtf ?
                Rectangle()
                    .frame(width: 296, height: 0.75)
                    .opacity(0.7)
                    .foregroundColor(Color(.separator))
                    .shadow(color: .black.opacity(0.7), radius: 4)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 16)
            
            // Option list
            VStack {
                ForEach(SideMenuOptionViewModel.allCases) { viewModel in
                    NavigationLink(value: viewModel) {
                        SideMenuOptionView(viewModel: viewModel)
                            .padding()
                    }
                }
            }
            .navigationDestination(for: SideMenuOptionViewModel.self) { viewModel in
                Text(viewModel.title)
            }
            Spacer()
        }
        .padding(.top, 32)
        
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(user: User(fullname: "Alexander Kozin",
                                email: "sasha_kozin2020@mail.ru",
                                uid: "1234567"))
    }
}

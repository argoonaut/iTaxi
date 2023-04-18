//
//  CustomInputFields.swift
//  iTaxi
//
//  Created by Alexandr Kozin on 18.04.2023.
//

import SwiftUI

struct CustomInputFields: View {
    
    @Binding var text: String
    
    let title: String
    let placeholder: String
    
    var isSecureField = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // Title
            Text(title)
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .font(.footnote)
            
            // Text field
            if isSecureField {
                SecureField(placeholder, text: $text)
                    .foregroundColor(.white)
            } else {
                TextField(placeholder, text: $text)
                    .foregroundColor(.white)
            }
            
            // Divider
            Rectangle()
                .foregroundColor(Color(.init(white: 1, alpha: 0.3)))
                .frame(width: UIScreen.main.bounds.width - 32,
                       height: 0.7)
        }
    }
}

struct CustomInputFields_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputFields(text: .constant(""), title: "Email", placeholder: "name@example.com")
    }
}

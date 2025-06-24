//
//  SignInView.swift
//  Bodima
//
//  Created by udara prabath on 2025-06-24.
//

import SwiftUI

struct SignInView: View {
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            HStack{
                Text("Sign In").font(.system(size: 32, weight: .medium, design: .default))
                Spacer()
            }
            .padding(.bottom)
            HStack{
                Text("Email")
                Spacer()
            }
            ZStack(alignment: .leading) {
                
                
                TextField("", text:$email)
                    .padding() // Add internal padding
                    .background(Color(.white)) // Light gray background
                    .cornerRadius(8) // Rounded corners
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(red:212/255,green:169/255,blue:169/255,opacity:1), lineWidth: 1) // Border stroke
                    )
                    .font(.system(size: 16, weight: .bold, design: .default)) // Font style
                    .foregroundColor((Color(red:212/255,green:169/255,blue:169/255,opacity:1))) // Text color
                if email.isEmpty {
                    Text("your email")
                        .foregroundColor(Color(red:212/255,green:169/255,blue:169/255,opacity:1))
                        .font(.system(size: 16, weight: .heavy, design: .rounded))
                        .padding(.leading, 8)
                }
            }
            
            HStack{
                Text("Password")
                Spacer()
            }
            ZStack(alignment: .leading) {
                
            
                TextField("", text:$email)
                    .padding() // Add internal padding
                    .background(Color(.white)) // Light gray background
                    .cornerRadius(8) // Rounded corners
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(red:212/255,green:169/255,blue:169/255,opacity:1), lineWidth: 1) // Border stroke
                    )
                    .font(.system(size: 16, weight: .bold, design: .default)) // Font style
                    .foregroundColor((Color(red:212/255,green:169/255,blue:169/255,opacity:1))) // Text color
                if email.isEmpty {
                    Text("your password")
                        .foregroundColor(Color(red:212/255,green:169/255,blue:169/255,opacity:1))
                        .font(.system(size: 16, weight: .heavy, design: .rounded))
                        .padding(.leading, 8)
                }
            }.padding(.bottom,30)
            Button(action: {
                // Your action here
            }) {
                Text("Submit")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.white)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 24)
                    .frame(maxWidth: .infinity)
                    .background(Color(red:69/255,green:55/255,blue:55/255,opacity:1))
                    .cornerRadius(25)
                    .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
            }        }
        .padding()
        
    }
    
}

#Preview {
    SignInView()
}

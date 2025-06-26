//
//  SignUpView.swift
//  Bodima
//
//  Created by udara prabath on 2025-06-26.
//


import SwiftUI

struct SignUpView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var username: String = ""
    @State private var isChecked: Bool = false

    var body: some View {
        VStack {
            Spacer()
            
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
                Text("Username")
                Spacer()
            }
            ZStack(alignment: .leading) {
                
                
                TextField("", text:$username)
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
                    Text("your username")
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
                      isChecked.toggle()
                  }) {
                      HStack {
                          Image(systemName: isChecked ? "checkmark.square" : "square")
                              .foregroundColor(isChecked ? .white : .black)
                              .background(isChecked ? .black : .white)
                          Text("I accept to the terms and privacy policy")
                      }
                  }
                  .buttonStyle(.plain)
            
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
            }
         
        Spacer()
        }
        .padding()
        
        HStack{
            Text("Not have an account?")
            Button(action: {
                // Your action here
            }) {
                Text("Register").foregroundColor(Color.black).font(.system(size:16,weight: .bold))
                
            }}

    }
    
}

#Preview {
    SignUpView()
}

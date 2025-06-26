//
//  HomeView.swift
//  Bodima
//
//  Created by udara prabath on 2025-06-26.
//
import SwiftUI

struct HomeView: View {
    @State private var search: String = ""

    var body: some View {
       VStack{
           Text("Bodima").font(.system(size: 32, weight: .medium, design: .default))
           ZStack(alignment: .leading) {
               
               
               TextField("", text:$search)
                   .padding() // Add internal padding
                   .background(Color(.white)) // Light gray background
                   .cornerRadius(8) // Rounded corners
                   .overlay(
                       RoundedRectangle(cornerRadius: 8)
                           .stroke(Color(red:212/255,green:169/255,blue:169/255,opacity:1), lineWidth: 1) // Border stroke
                   )
                   .font(.system(size: 16, weight: .bold, design: .default)) // Font style
                   .foregroundColor((Color(red:212/255,green:169/255,blue:169/255,opacity:1))) // Text color
               if search.isEmpty {
                   Text("Search...")
                       .foregroundColor(Color(red:212/255,green:169/255,blue:169/255,opacity:1))
                       .font(.system(size: 16, weight: .heavy, design: .rounded))
                       .padding(.leading, 8)
               }
            
               
           }.padding()
           HStack{
               Text("Stories").font(.system(size: 22, weight: .medium, design: .default))
               Spacer()
               Button(action: {
                   // Your action here
               }) {
                   Text("Watch all")
                   
               }
           }.padding()
           HStack{
               VStack{
                   
                   Button(action: {
                       // Your action here
                   }) {
                       Text("+")
                           .foregroundColor(.black)
                           .font(.title) // Optional: makes "+" bigger
                   }
                   .frame(width: 58, height: 58)
                   .background(Color.white) // Optional: adds background to make it visible
                   .clipShape(Circle())
                   .overlay(
                    Circle()
                        .stroke(Color.black, lineWidth: 2) // Add black border
                   )
                   .shadow(radius: 2) // Optional: slight shadow
                   Text("Add Story").font(.system(size:15))
               }
               ForEach(0..<3){_ in
                   VStack{
                       AsyncImage(url: URL(string: "https://i.pravatar.cc/150?img=3")) { image in
                           image
                               .resizable()
                               .aspectRatio(contentMode: .fill)
                               .frame(width: 60, height: 60)
                               .clipShape(Circle())
                       } placeholder: {
                           ProgressView()
                       }
                       
                       Text("name")
                   }}.padding()
           }.padding()
        }
    }
}
#Preview {
    HomeView()
}

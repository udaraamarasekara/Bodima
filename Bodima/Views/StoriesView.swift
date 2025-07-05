//
//  StoriesView.swift
//  Bodima
//
//  Created by udara prabath on 2025-07-05.
//

//
//  HomeView.swift
//  Bodima
//
//  Created by udara prabath on 2025-06-26.
//
import SwiftUI

struct StoriesView: View {
    @State private var search: String = ""
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        VStack{
            Text("Stories").font(.system(size: 32, weight: .medium, design: .default))
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
                
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(items) { item in
                            StoryCard()
                        }
                    }
                    .padding()
                }
            }}
    }
}
#Preview {
    StoriesView()
}

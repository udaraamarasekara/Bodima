//
//  NewsCard.swift
//  Bodima
//
//  Created by udara prabath on 2025-06-26.
//
import SwiftUI
struct NewsCard: View {
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: "https://i.pravatar.cc/150?img=3")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
            } placeholder: {
                ProgressView()
            }
            VStack{
                Text("User name").font(.system(size:13,weight:.bold))    .frame(maxWidth: .infinity, alignment: .leading)

                Text("email")
                    .font(.system(size: 12)) // or any size you want
                    .foregroundColor(Color(red: 96/255, green: 91/255, blue: 255/255, opacity: 1))    .frame(maxWidth: .infinity, alignment: .leading)


            }
            Text(".")
            Text("following").font(.system(size:12)).foregroundColor(Color(red:0,green:0,blue:0,opacity:0.4))
            Text(".")
            Text("1 hour").font(.system(size:12)).foregroundColor(Color(red:0,green:0,blue:0,opacity:0.4))
            Text("...").font(.system(size: 12,weight:.bold)).frame(maxWidth:.infinity,alignment:.trailing)
        }.padding()
    }
}

#Preview(){
    NewsCard()
}

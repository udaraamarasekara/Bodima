
import SwiftUI
struct StoryCard: View {
    var body: some View {
        VStack{
            ZStack{
                
                
                AsyncImage(url: URL(string: "https://i.pravatar.cc/150?img=3")) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:.infinity,height:.infinity)
                } placeholder: {
                    ProgressView()
                }.padding().opacity(0.5)
                AsyncImage(url: URL(string: "https://i.pravatar.cc/150?img=3")) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                } placeholder: {
                    ProgressView()
                }
            }.cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 1)
                ).padding().frame(width:.infinity,height: .infinity)
        }
    }
}

#Preview(){
    StoryCard()
}

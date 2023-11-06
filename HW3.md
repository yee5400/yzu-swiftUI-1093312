<h1>HW3</h1>
      
 ```swift

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TitleView()
            topView()
            
            HStack{
                MiddleView(imageName: "I")
                MiddleView(imageName: "J")
                MiddleView(imageName: "T")
                /*TomatoView()
                 BananaView()*/
            }
            bottomView()
        }
    }
}

struct TitleView: View {
    var body: some View {
        VStack(alignment:.center, spacing:2){
            Text("Audrey的")
            .font(.system(size:30))
            Text("俄羅斯方塊盒")
            .font(.title).foregroundColor(Color(red: 29/255,green: 40/255, blue: 192/255))}       
    }
}
struct topView: View {
    var body: some View {
        VStack(){
            Image("O")
                .resizable()
                .aspectRatio(contentMode:.fit)
                .padding(.all, 15)
            Text("O")
                .fontWeight(.bold)
                .font(.system(size: 30))
        }
    }
}
struct MiddleView: View {
    var imageName: String
    var body: some View {
        VStack(){
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(height: 150, alignment:.center)
            Text(imageName.capitalized)
                .fontWeight(.bold)
                .font(.system(size: 25))
        }
        .frame(minWidth: 0, idealWidth: 100,
               maxWidth: .infinity, minHeight: 0,
               idealHeight: 100, maxHeight: .infinity,
               alignment: .center)
    }
}

struct bottomView: View {
    var body: some View {
        VStack(){
            Image("Z")
                .resizable()
                .aspectRatio(contentMode:.fit)
                .padding(.all, 15)
            Text("Z")
                .fontWeight(.bold)
                .font(.system(size: 30))
        }
    }
}
 ```
https://github.com/yee5400/yzu-swiftUI-1093312/blob/d8ff8d809f2b3e1d0d97955156ee97250af1e445/HW3_pic.jpg

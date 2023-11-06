import SwiftUI
var p=["✂️","🪨","🖐🏻"]
struct ContentView: View {
    @State var randomInt = Int.random(in: 0...2)
    var body: some View {
        Button(action: {
            randomInt=Int.random(in: 0...2)
        }, label: {
            VStack{
                Text(p[randomInt])
                    .frame(width:300,height: 200,alignment: .center)
                    .font(.system(size: 200))
                
                Text(Image(systemName: "gamecontroller"))
                .font(.system(size: 50))
                //.frame(alignment:.bottom)
                Text("Go!")
                    .font(.system(size: 20))
                
            }
        })
                    Text("剪刀石頭布")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                .frame(alignment: .topLeading)
                .opacity(0.4)
    }
}

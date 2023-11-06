<h1>HW1</h1>
    
```swift

import SwiftUI

struct ContentView: View{
    var body: some View{
        Image("Me")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .overlay(
            Image(systemName: "figure.walk")
                .font(.system(size:100))
                .foregroundColor(.brown)
                .opacity(0.9)
                .frame(width:300,height:500,alignment: .bottomTrailing )
            )
            .overlay(
            Text("1093312 熊新元")
                .fontWeight(.heavy)
                .lineSpacing(10)
                .font(.system(size:30))
                .foregroundColor(.white)
               ///.margin(CGRect(30,50))
                .frame(width: 500, height: 150, alignment: .center)
               // .padding(EdgeInsets(top: -20, leading: -100,bottom: 33, trailing: 12))
                // .background(Color.gray)
                 .cornerRadius(30.0)
                 .opacity(0.9)
            ,
            alignment: .bottomLeading
            )
            .overlay(
            Text("：人生沒有一條路是白走的。")
                .fontWeight(.heavy)
                .lineSpacing(10)
                .font(.system(size:20))
                .foregroundColor(.white)
                //.margin(CGRect(30,50))
                .frame(width: 320, height: 50, alignment: .center)
             //.padding(EdgeInsets(top: -20, leading: -100,bottom: 33, trailing: 12))
             .background(Color.gray)
                .cornerRadius(30.0)
                .opacity(0.9)
            ,
            alignment: .init(horizontal:.center , vertical: .bottom)
            
            )
            
    }
}
```
<img width="40%"  src="https://github.com/yee5400/yzu-swiftUI-1093312/blob/5aad59b472ef03cb0c43deae3293f754caf63aae/HW1_pic.jpg">

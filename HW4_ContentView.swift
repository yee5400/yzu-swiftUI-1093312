import SwiftUI

struct ContentView: View{
    var body:some View{
        VStack{
          //  TabView{
                Group{
                    Text("Audrey的寶貝箱")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundStyle(.primary)
                    TabView{
                        WelcomeView()
                            .tabItem{
                                Image(systemName: "rosette")
                                Text("Welcome")
                            }
                        CourseListlView()
                            .tabItem{
                                Image(systemName: "list.dash")
                                Text("Courses")
                            }
                        CardView()
                            .tabItem{
                                Image(systemName: "book")
                                Text("Learn")
                            }
                    }
                }
                .toolbarBackground(Color.black, for: .tabBar)
                .toolbarBackground(.visible, for:.tabBar)
                //.toolbarColorScheme(.dark, for: .tabBar)}
            }.tint(.yellow)
        //}
    }
}

struct WelcomeView:  View{
    var body: some View{
        VStack{
            Image("Me")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("大家好 大家好\n我是Audrey大家好")
                .fontWeight(.heavy)
                .lineSpacing(20)
                .font(.system(size: 32.0))
                .foregroundColor(.white)
                .frame(width: 350, height: 150, alignment: .center)
                .background(Color.teal)
                .cornerRadius(20.0)
                .multilineTextAlignment(.center)
        }
    }
}

 ```
[![](https://i.ytimg.com/vi/wAh0r7Y-m3c/maxresdefault.jpg)](https://youtu.be/wAh0r7Y-m3c?si=zw3jQYkEknf_Zvnl "")

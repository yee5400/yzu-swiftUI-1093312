<h1>HW2</h1>
      
 ```swift
import SwiftUI

struct TermAndDescription: Identifiable{
    var id = UUID()
    var term:String
    var description:String
}
var myDictionary = [
    TermAndDescription(term: "蘿蔔刀", description: "可以刺破紙跟蘋果"),
    TermAndDescription(term: "俄羅斯方塊", description: "很上頭\n會吃時間"),
    TermAndDescription(term: "英雄聯盟", description: "死掉的次數通常是殺人加助攻的好多倍"),
    TermAndDescription(term: "戰旗", description: "最近都玩Disco")
]

struct CardView: View{
    @State var currentCard = 0
    var body: some View{
        VStack{
            VStack{
                Text(myDictionary[currentCard].term)
                    .font(.title)
                    .padding(.all, 10)
                Text(myDictionary[currentCard].description)
                    .font(.body)
                    .foregroundColor(.blue)
                .padding(.all, 10)}
            .frame(minWidth: 0, idealWidth: 100, maxWidth: 300, minHeight: 0, idealHeight: 100, maxHeight: 300, alignment: .center)
            .background(Color.yellow)
            .onTapGesture{
                if currentCard<myDictionary.count-1{
                    currentCard+=1
                }else{
                    currentCard=0
                }
            }
            Text("點擊查看下一張")
                .padding(.all, 10)
        }
    }
}


      
 ```

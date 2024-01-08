import SwiftUI

struct Course:Identifiable{
    var id=UUID()
    var name:String
    var image:String
    var description:String
}
var courses = [
    Course(name: "阿寶", image: "阿寶", description: "去探險囉！"),
    Course(name: "老皮", image: "老皮", description: "我天生就是個探險家"),
    Course(name: "泡泡糖公主", image: "泡泡糖公主", description: "漂亮真的好累"),
    Course(name: "冰霸王", image: "冰霸王", description: "怎麼會這樣⋯"),
    Course(name: "阿鵝", image: "阿鵝", description: "呱呱呱呱呱呱呱呱呱呱")]

struct BasicImageRow: View{
    var thisCourse:Course
    var body: some View{
        HStack{
            Image(thisCourse.image)
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(5)
            Text(thisCourse.name)
        }
    }
}

struct CourseDetailView:View{
    @Environment(\.presentationMode) var presentationMode 
    var thisCourse: Course
    var body: some View{
        ScrollView{
            VStack{
                Image(thisCourse.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                Text(thisCourse.name)
                    .font(.system(.title, design:.rounded))
                    .fontWeight(.black)
                Spacer()
                Text(thisCourse.description)
                    .font(.system(.subheadline, design:.rounded))
                    .fontWeight(.light)
                Spacer()
            }
        }
        .overlay(
            HStack{
                Spacer()
                VStack{
                    Button(action:{
                        self.presentationMode.wrappedValue.dismiss()
                    },label:{
                        Image(systemName:"chevron.down.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    })
                    .padding(.trailing, 20)
                    .padding(.top, 40)
                    Spacer()
                }
            }
        )
    }
}

struct CourseListlView:View{
    
@State var showDetailView = false
@State var selectedCourse:Course?

    var body: some View{
        NavigationView{
            List(courses){ courseItem in 
                BasicImageRow(thisCourse: courseItem)
                    .onTapGesture{
                        self.showDetailView = true
                        self.selectedCourse = courseItem
                    }
            }
            .sheet(item: self.$selectedCourse){ thisCourse in 
                CourseDetailView(thisCourse: thisCourse)
            }
            .navigationBarTitle("我家成員")
        }
    }
}

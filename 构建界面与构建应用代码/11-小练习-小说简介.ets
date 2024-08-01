
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
//构建 -> 界面
  build() {
    // 布局思路： 先排版，再内容
    Column(){
      //内容
      Text('小说简介')
        .width('100%')
        .height(40)
        .fontSize(20)
        .fontWeight(FontWeight.Bolder)// 可以写入100-900的数字 加粗700   默认400
      Row(){
        Text('都市')
          .width(50)
          .height(30)
          .backgroundColor(Color.Orange)
          .fontColor(Color.Blue)
        Text('都市生活')
          .width(80)
          .height(30)
          .backgroundColor(Color.Pink)
        Text('情感')
          .width(50)
          .height(30)
          .backgroundColor(Color.Yellow)
        Text('男频')
          .width(50)
          .height(30)
          .backgroundColor(Color.Gray)
      }
      .width('100%')
    }
    .width('100%')
  }
}
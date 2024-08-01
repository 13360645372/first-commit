
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
//构建 -> 界面
  build() {
    Column(){
      Text('  学鸿蒙，就来黑马程序员~')
        .fontSize(24)
        .fontColor(Color.Black)
        .width('100%')
        .height(30)
      Row(){
        Text('    置顶  ')
          .fontColor(Color.Red)
          .fontSize(14)
          .fontWeight(FontWeight.Normal)
          .width('')
        Text('新华社')
          .fontColor(Color.Gray)
          .fontSize(14)
          .fontWeight(FontWeight.Normal)
          .width(50)
        Text('4080评论')
          .fontColor(Color.Gray)
          .fontSize(14)
          .fontWeight(FontWeight.Normal)
          .width(60)
      }
      .width('100%')
    }
  }
}
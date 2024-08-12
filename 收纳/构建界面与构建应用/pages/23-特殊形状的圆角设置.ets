@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text('正圆')
        .width(100)
        .height(100)
        .backgroundColor(Color.Red)
        .margin({ bottom: 30 })
        // 数值是高的一半
        .borderRadius(50)


      Text('胶囊按钮')
        .width(200)
        .height(60)
        .backgroundColor(Color.Orange)
        .margin({ bottom: 30 })
        // 数值是高的一半
        .borderRadius(30)
      Image($r('app.media.cat'))
        .width(100)
        .height(100)
        .borderRadius(50)
    }
    .padding(20)
    .width('100%')
  }
}
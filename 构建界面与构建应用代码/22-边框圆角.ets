@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text('没有圆角')
        .width(100)
        .height(60)
        .backgroundColor(Color.Red)
        .margin({ bottom: 30 })


      Text('添加圆角')
        .width(100)
        .height(60)
        .backgroundColor(Color.Orange)
        .margin({ bottom: 30 })


        // .borderRadius(10)
        .borderRadius({
          topLeft: 10,
          topRight: 20,
          bottomRight: 40,
          bottomLeft: 80
        })
    }
    .padding(20)
    .width('100%')
  }
}
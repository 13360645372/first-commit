@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text('我是内容文本')
        .width(300)
        .height(300)
        .backgroundColor(Color.Orange)
          // 属性值（图片地址, imageRepeat.）
        .backgroundImage($r('app.media.flower'), ImageRepeat.NoRepeat)
        .backgroundImagePosition({ x: 150, y: 150})
        // .backgroundImagePosition(Alignment.Center)
    }
    .padding(20)
    .width('100%')
  }
}
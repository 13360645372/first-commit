@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text('我是内容文本')
        .width(200)
        .height(100)
          // 属性值（图片地址, imageRepeat.）
        .backgroundImage($r('app.media.flower'), ImageRepeat.XY)
    }
    .padding(20)
    .width('100%')
  }
}
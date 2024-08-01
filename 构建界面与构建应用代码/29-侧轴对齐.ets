@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    // Column 侧轴的对齐方式
    // alignItems(HorizontalAlign.Start)
    // Row 侧轴对齐方式
    // alignItems(VerticalAlign.Start)
    Row() {
      Text()
        .width(200)
        .height(100)
        .backgroundColor(Color.Pink)
        .border({ width: 2})
      Text()
        .width(200)
        .height(100)
        .backgroundColor(Color.Pink)
        .border({ width: 2})
        .margin(5)
      Text()
        .width(200)
        .height(100)
        .backgroundColor(Color.Pink)
        .border({ width: 2})
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
    .alignItems(VerticalAlign.Center)
  }
}
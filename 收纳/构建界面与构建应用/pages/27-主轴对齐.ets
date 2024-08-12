@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column() {
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
    // .padding(20)
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
    .justifyContent(FlexAlign.SpaceBetween)
  // Start 主轴起始位置对齐
  // Center 主轴居中
  // End 主轴结束位置对齐
  // SpaceBetween 贴边均分
  // SpaceAround 间隙环绕 0.5 1 1 0.5
  // SpaceEvenly 间隙均匀环绕 1 1 1
  }
}
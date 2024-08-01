@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text('阶段选择')
        .fontWeight(700)
        .fontSize(30)
        .width('100%')
        .padding(15)
      Flex({
        wrap: FlexWrap.Wrap
      }) {
        Text('ArkUI')
          .margin(5)
          .padding(10)
          .backgroundColor('#f1f1f1')
          // .width(100)
          // .height()
        Text('ArkTS')
          .margin(5)
          .padding(10)
          .backgroundColor('#f1f1f1')
          // .width(100)
        Text('界面开发')
          .margin(5)
          .padding(10)
          .backgroundColor('#f1f1f1')
          // .width(100)
        Text('系统能力')
          .margin(5)
          .padding(10)
          .backgroundColor('#f1f1f1')
          // .width(100)
        Text('权限控制')
          .margin(5)
          .padding(10)
          .backgroundColor('#f1f1f1')
          // .width(100)
        Text('元服务')
          .margin(5)
          .padding(10)
          .backgroundColor('#f1f1f1')
          // .width(100)
      }
    }
    // .padding(20)
    // .width('100%')
    // .height('100%')
    // .backgroundColor('#ccc')

  }
}
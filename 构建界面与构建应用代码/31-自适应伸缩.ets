@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {

    Column() {
      Row() {
        Text('左侧')
          .layoutWeight(1)
          .height(40)
          .backgroundColor(Color.Pink)
        Text('右侧')
          .width(80)
          .height(40)
          .backgroundColor(Color.Orange)
      }
      .width(300)
      .height(40)
      .backgroundColor('#fff')
      Row() {
        Text('老大')
          .layoutWeight(3)
          .height(40)
          .backgroundColor(Color.Gray)
        Text('老二')
          .layoutWeight(2)
          .height(40)
          .backgroundColor(Color.Blue)
        Text('老三')
          .layoutWeight(1)
          .height(40)
          .backgroundColor(Color.Brown)

      }
      .width(300)
      .height(40)
      .backgroundColor('#fff')
      .margin(30)
    }
    .padding(10)
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')

  }
}
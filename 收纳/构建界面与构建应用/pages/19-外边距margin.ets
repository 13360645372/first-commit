@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Row() {
        Text('刘备')
          .backgroundColor(Color.Green)
        Text('张飞')
          .backgroundColor(Color.Blue)
          .margin({
            left: 20,
            right: 40
          })
        Text('关羽')
          .backgroundColor(Color.Orange)
      }
    }
  }
}
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column() {
        Text('小龙女')
          .backgroundColor(Color.Pink)
            // .padding(10)
          .padding({
            top: 10,
            right: 20,
            bottom: 40,
            left: 80,
          })
    }
  }
}
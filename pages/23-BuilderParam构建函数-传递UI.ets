@Component
struct SonCom {
  @BuilderParam ContentBuilder: () => void = this.defaultBuilder
  @Builder
  defaultBuilder () {
    Text('默认的内容')
}
  build() {
    Column() {
      this.ContentBuilder()
    }
  }
}


@Entry
@Component
struct Index {
  build() {
    Column() {
      SonCom(){
        Button('传入的结构')
      }
    }
    .width('100%')
    .height('100%')
    .padding(20)
    .backgroundColor(Color.Gray)
  }
}
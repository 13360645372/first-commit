
// 自定义组件
@Component
struct MyCom {
  build() {
    Row() {
      Text('自定义组件')
      Button('按钮')
    }
  }
}

@Component
struct MyHeader {
  build() {
    Row() {
      Text('我是头部')
        .fontWeight(700)

    }
    .width('100%')
    .height(50)
    .backgroundColor(Color.Red)
  }
}


@Entry
@Component
struct Index {
  build() {
    Column() {
      MyHeader()

      MyCom()
      MyCom()
      MyCom()
      MyCom()
    }
  }
}
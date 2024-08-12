// @Styles: 抽取通用属性、事件
// 全局定义
@Styles function commonStyles () {
  .width(100)
  .height(100)
  // .backgroundColor(Color.Gray)
  .margin({bottom: 10})
}

@Entry
@Component

struct Index {

  @State bgColor: ResourceColor = Color.Gray

  // 2、在组件内定义
  @Styles setBg() {
    .backgroundColor(this.bgColor)
    .onClick(() => {
      this.bgColor = Color.Orange
    })
  }

  build() {
    Column() {

      Text('1')
        .fontColor(Color.White)
        .setBg()
        .commonStyles()

      Column() {}
        .setBg()
        .commonStyles()

      Button('按钮')
        .setBg()
        .commonStyles()
    }
    .width('100%')
    .height('100%')
  }
}
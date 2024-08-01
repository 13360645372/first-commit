// @Extend组件
// 扩展组件（样式、事件）

// 语法：
// @Extend(组件名)
// function 函数名 (参数1: 声明类型, 参数2: 声明类型) {
//   内容样式
// }

@Extend(Text)
function TextExtend (bgColor: ResourceColor, msg: string) {
  .textAlign(TextAlign.Center)
  .backgroundColor(bgColor)
  .fontColor(Color.White)
  .fontSize(30)
  .onClick(() => {
    AlertDialog.show({
      message: msg
    })
  })
}

@Entry
@Component

struct Index {


  build() {
    Column() {

      Swiper() {
        Text('1')
          .TextExtend(Color.Orange, '轮播图1')
        Text('2')
          .TextExtend(Color.Red, '轮播图2')
        Text('3')
          .TextExtend(Color.Green, '轮播图3')
      }
      .width('100%')
      .height(150)
    }
    .width('100%')
    .height('100%')
  }
}
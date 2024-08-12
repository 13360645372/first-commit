@Component
struct MyPanel {
  // 成员变量 - 数据
  @State title: string = '默认大标题'
  @State extra: string = '查看更多'
  // 成员变量 - 函数 - 可以外部传入覆盖的
  getMore = () => {
    AlertDialog.show({
      message: '打招呼'
    })
  }

  @BuilderParam ContentBuilder: () => void = this.defaultBuilder
  @Builder defaultBuilder () {
    Text('默认的文本')
  }

  build() {
    Column() {
      Row() {
        Text(this.title).fontSize(18)
        Text(this.extra).fontSize(18)
          .onClick(() => {
            this.getMore()
          })
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      Row() {
        this.ContentBuilder()
      }
      .padding(20)
    }
    .padding(10)
    .width('100%')
    .height(200)
    .margin({ bottom: 20 })
    .borderRadius(10)
    .backgroundColor(Color.White)
  }
}


@Entry
@Component
struct Index {
  build() {
    Column() {
      MyPanel({
        title: '我的订单',
        extra: '全部订单',
        getMore() {
          AlertDialog.show({
            message: '点击了全部订单'
          })
        }
      }){
        Text('我是订单 - 相关文本')
      }
      MyPanel({
        title: '小米有品众筹',
        extra: '7款重酬中',
        getMore() {
          AlertDialog.show({
            message: '点击了全部订单'
          })
        }
      }){
        Button('按钮')
      }
    }
    .width('100%')
    .height('100%')
    .padding(20)
    .backgroundColor(Color.Gray)
  }
}
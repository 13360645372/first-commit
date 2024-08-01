
@Entry
@Component
struct Index {

  myScroll: Scroller = new Scroller()

  build() {
    Column() {
      // 绑定给Scroll组件
      Scroll(this.myScroll) {
        Column({space: 10}) {
          ForEach(Array.from({ length: 5 }), (item: string, index: number) => {
            Text('测试文本' + (index + 1))
              .width("100%")
              .height(100)
              .textAlign(TextAlign.Center)
              .backgroundColor(Color.Orange)
              .fontColor(Color.White)
              .fontSize(20)
              .borderRadius(10)
          })
        }
        .width('100%')
        .padding(10)
      }
      .width('100%')
      .height(400)
      // 调整滚动方向
      // .scrollable(ScrollDirection.Horizontal)
      // 设置滚动条状态 Off 关 On 一直开 Auto 默认
      .scrollBar(BarState.On)
      // 设置滚动条颜色
      .scrollBarColor(Color.Green)
      // 滚动条的宽度
      .scrollBarWidth(5)
      // 设置边缘滑动效果 Spring 弹簧 Fade 阴影
      .edgeEffect(EdgeEffect.Spring)

      Button('控制滚动条的位置').margin(20)
        .onClick(() => {
          this.myScroll.scrollEdge(Edge.Top)

        })
      Button('获取已经滚动的距离')
        .onClick(() => {
          const y = this.myScroll.currentOffset().yOffset
          AlertDialog.show({
            message: `y: ${y}`
          })
        })
    }
  }
}
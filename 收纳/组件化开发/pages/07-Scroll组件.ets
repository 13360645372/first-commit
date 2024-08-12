
@Entry
@Component
struct Index {

  build() {
    Column() {
      Scroll() {
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
      // 设置滚动条状态 Off关 On 一直开 Auto 默认
      .scrollBar(BarState.On)
      // 设置滚动条颜色
      .scrollBarColor(Color.Green)
      // 滚动条的宽度
      .scrollBarWidth(5)
      // 设置边缘滑动效果 Spring 弹簧 Fade 阴影
      .edgeEffect(EdgeEffect.Spring)
    }
  }
}
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    // 绝对定位
    // position可以控制组件位置，可以实现层叠效果
    // 语法
    // .position({
    //    x: 0,
    //    y: 0
    // })
    // 1、相对于父级左顶点偏移
    // 2、原本的位置不占，，且可以随意调位置，不影响其他元素
    //
    Column() {
      Text('文字内容')
        .width(80)
        .height(80)
        .backgroundColor(Color.Pink)
        .zIndex(1)
      Text('文字内容')
        .width(80)
        .height(80)
        .backgroundColor(Color.Orange)
        .position({
          x: 120,
          y: 40
        })
        .zIndex(2)
      Text('文字内容')
        .width(80)
        .height(80)
        .backgroundColor(Color.Red)
        .zIndex(3)
    }
    // .padding(20)
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')

  }
}
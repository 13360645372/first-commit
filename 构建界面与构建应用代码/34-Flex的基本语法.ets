@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    // 1、主轴方向
    // direction: FlexDirection.Row / Column
    // 2、主轴对齐方向
    // justifyContent: FlexAlign.SpaceBetween
    // 3、侧轴对齐方式
    // alignItems: ItemAlign.Center
    // 4、Flex换行
    //wrap: FlexWrap.Wrap 默认情况下是不换行的
    Flex({
      direction: FlexDirection.Row,
      // justifyContent: FlexAlign.SpaceBetween,
      // alignItems: ItemAlign.Start,
      wrap: FlexWrap.Wrap
    }) {
      Text()
        .width(80).height(80)
        .backgroundColor(Color.Pink)
        .border({ width: 1, color: Color.Blue})
      Text()
        .width(80).height(80)
        .backgroundColor(Color.Pink)
        .border({ width: 1, color: Color.Blue})
      Text()
        .width(80).height(80)
        .backgroundColor(Color.Pink)
        .border({ width: 1, color: Color.Blue})
      Text()
        .width(80).height(80)
        .backgroundColor(Color.Pink)
        .border({ width: 1, color: Color.Blue})
      Text()
        .width(80).height(80)
        .backgroundColor(Color.Pink)
        .border({ width: 1, color: Color.Blue})
      Text()
        .width(80).height(80)
        .backgroundColor(Color.Pink)
        .border({ width: 1, color: Color.Blue})

    }
    // .padding(20)
    .width('100%')
    .height(600)
    .backgroundColor('#ccc')

  }
}
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column() {
    //   border边框
      Text('测试文本')
        .border({
          // width: 1, //宽度（必须）
          // color: Color.Red, // 颜色
          // style: BorderStyle.Solid
          width: { left: 1, right: 2},
          color: { left: Color.Red, right: Color.Orange },
          style: {
            left: BorderStyle.Dashed,
            right: BorderStyle.Dotted
          }
        })
        .padding(5)
    }
    .padding(20)
    .width('100%')
  }
}
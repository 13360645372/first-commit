
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
//构建 -> 界面
  build() {
    RelativeContainer() {
      // 文本 函数名（参数） 对象.方法名（参数） 枚举名.常量名
      Text(this.message)
        .id('HelloWorld')
        .fontSize(60) // 设置文本的大小
        .fontWeight(FontWeight.Medium) // 设置文本的粗细
        .fontColor(Color.Blue) // 设置文本的颜色
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}
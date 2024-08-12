
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
//构建 -> 界面
  build() {
    Column(){
      Text('HarmonyOS开发初体验')
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .width('100%')
        .lineHeight(50)
      Text('方舟开发框架（简称ArkUI）为HarmonyOS应用的UI开发大大撒旦撒旦阿斯顿啊散打王速度阿文大苏打伟大阿三大王速度阿文但是都阿瓦达撒大苏打伟大撒大网的撒大都市的啊大多为价格低就是')
        //文本溢出省略
        .textOverflow({
          overflow: TextOverflow.Ellipsis
        })
        // 显示多少行
        .maxLines(2)
        .width('100%')
        //行据
        .lineHeight(24)
    }
    .width('100%')
  }
}
//枚举类型
import { ResizeDirection } from '@kit.TestKit';

//美剧类型是一种特殊的数据类型，约定变量只能在一组数据范围内选择值
//语法  enum 枚举名 {
// 常量1 = 值
// 常量2 = 值
// }

//声明枚举类型
enum Color {
  Red = '#ffof29',
  Orange = '#ff7100',
  Green = '#30b30e'
}


//使用枚举类型里的数据
let color: Color = Color.Orange
console.log('颜色',color)



@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}
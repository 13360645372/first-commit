
// 自定义组件 通用属性和方法
import { HolleCom as holle } from '../components/HolleCom'

@Entry
@Component
struct Index {
  build() {
    Column() {
      holle()
        .width(250)
        .height(60)
        .backgroundColor(Color.Gray)
        .onClick(() => {
          AlertDialog.show({
            message: '测试点击'
          })
        })
    }
  }
}
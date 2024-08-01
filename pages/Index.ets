import InfoItem from '../components/InfoItem'
import InfoTop from '../components/InfoTop'


@Entry
@Component
struct Index {
  build() {
    Column() {
      // 头部
      InfoTop()
      // 中间
      List() {
        ForEach(Array.from({ length: 20 }), () => {
          ListItem() {
            InfoItem()
          }
        })

      }
      .padding({ bottom: 10 })
      .layoutWeight(1)
      // 底部
      Row() {

      }
      .width('100%')
      .height(60)
      .backgroundColor(Color.Pink)
    }
    .width('100%')
    .height('100%')
  }
}
import InfoButtom from '../components/InfoButtom'
import InfoItem from '../components/InfoItem'
import InfoTop from '../components/InfoTop'
import font from '@ohos.font'
import {CommentData, createListRange} from '../model/CommentData'
import { it } from '@ohos/hypium'

let ListArr: CommentData[] = createListRange()

@Entry
@Component
struct Index {
  // 一加载Index入口页面，就进行注册
  // aboutToAppear 会在组建一加载时，自动调用执行（生命周期函数）
  aboutToAppear(): void {
  //   注册字体
    font.registerFont({
      familyName: 'myfont',
      familySrc: '/fonts/iconfont.ttf'
    })
  }


  build() {
    Column() {
      // 头部
      InfoTop()
      // 中间
      List() {
        ForEach(ListArr, (item: CommentData, index: number) => {
          ListItem() {
            InfoItem({
              itemObj: item
            })
          }
        })

      }
      .padding({ bottom: 10 })
      .layoutWeight(1)
      // 底部
      InfoButtom()

    }
    .width('100%')
    .height('100%')
  }
}
import InfoButtom from '../components/InfoButtom'
import InfoItem from '../components/InfoItem'
import InfoTop from '../components/InfoTop'
import font from '@ohos.font'
import {CommentData, createListRange} from '../model/CommentData'
import { it } from '@ohos/hypium'


@Entry
@Component
struct Index {
  @State ListArr: CommentData[] = createListRange()
  // 一加载Index入口页面，就进行注册
  // aboutToAppear 会在组建一加载时，自动调用执行（生命周期函数）
  aboutToAppear(): void {
  //   注册字体
    font.registerFont({
      familyName: 'myfont',
      familySrc: '/fonts/iconfont.ttf'
    })
  }


  handleLike (index: number) {
    let itemData = this.ListArr[index]
    if(itemData.isLike) {
      itemData.likeNum -= 1
    } else {
      itemData.likeNum += 1
    }
    itemData.isLike = !itemData.isLike

    this.ListArr.splice(index, 1, itemData)
  }


  build() {
    Column() {
      // 头部
      InfoTop()
      // 中间
      List() {
        ForEach(this.ListArr, (item: CommentData, index: number) => {
          ListItem() {
            InfoItem({
              itemObj: item,
              index: index,
              onLikeClick: (index: number) => {
                this.handleLike(index)
              }
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
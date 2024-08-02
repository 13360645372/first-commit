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

    // 默认最新
    this.handleSort(0)
  }

  SubmitComment (comment: string) {
    this.ListArr.unshift(
      new CommentData(`https://n.sinaimg.cn/sinakd20116/96/w2048h2048/20240323/24a7-52a54c327350fe430e27f8b5847a0bf5.jpg`, "我", new Date().getTime(), 5 , 0, comment, false),
    )
  }


  handleLike (index: number) {
    let itemData = this.ListArr[index]
    if(itemData.isLike) {
      itemData.likeNum -= 1
    } else {
      itemData.likeNum += 1
    }
    itemData.isLike = !itemData.isLike


    // 优化点赞头像闪烁的问题
    // 因为splice语句会对整个数组进行更新
    // 所以我们可以用@Oberved和@ObjectLink进行优化
    // 在数据类上增加@Oberved以及在接受数据的位置前加上@ObjectLink
    // this.ListArr.splice(index, 1, itemData)
  }

  handleSort (index: number) {
    if (index === 0) {
      this.ListArr.sort((a, b) => {
        return b.time - a.time
      })
    } else {
      this.ListArr.sort((a, b) => {
        return b.likeNum - a.likeNum
      })
    }
  }


  build() {
    Column() {
      // 头部
      InfoTop({
        onSort: (index: number) => {
          this.handleSort(index)
        }
      })
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
      InfoButtom({
        onSubmitComment: (comment: string) => {
          this.SubmitComment(comment)
        }
      })

    }
    .width('100%')
    .height('100%')
  }
}
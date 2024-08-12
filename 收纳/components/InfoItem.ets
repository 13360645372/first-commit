import { CommentData } from '../model/CommentData'

@Component
struct InfoItem {
  onLikeClick = (index: number) => {}


  @ObjectLink itemObj: CommentData
  @Prop index: number
  build() {
    Column() {
      // 1.头像。。。
      Row() {
        Image(this.itemObj.avatar)
          .width(30).aspectRatio(1)
          .margin({ top: 10 })
          .borderRadius(15)
        Text(this.itemObj.name)
          .fontSize(13)
          .fontColor(Color.Gray)
          .margin({ top: 10, left: 8 })
        Image(this.itemObj.levelIcon)
          .width(20).aspectRatio(1)
          .margin({ top: 10, left: 8})
          .borderRadius(15)
      }
      // 2.评论内容
      Row() {
        Text(this.itemObj.commentTxt)
          .fontWeight(700)
          .fontSize(13)
          .fontColor(Color.Black)
          .margin({ left: 40, top: 0, bottom: 8})
      }
      // 3. 评论日期
      Row() {
        Text(this.itemObj.timeString)
          .fontSize(13)
          .fontColor(Color.Gray)
        Row() {
          Image($r(this.itemObj.isLike ? 'app.media.like_select' : 'app.media.like_unselect' ))
            .width(15).aspectRatio(1)
          Text(`${this.itemObj.likeNum}`)
            .fontSize(11)
            .fontColor(this.itemObj.isLike ? Color.Blue : Color.Gray)
        }
        .onClick(() => {
          this.onLikeClick(this.index)
        })
      }
      .padding({ left: 40, top: 5})
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)

    }
    .padding({left: 15, right: 15})
    .alignItems(HorizontalAlign.Start)
  }
}
export default InfoItem
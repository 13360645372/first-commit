@Component
struct InfoItem {
  build() {
    Column() {
      // 1.头像。。。
      Row() {
        Image($r('app.media.app_icon'))
          .width(30).aspectRatio(1)
          .margin({ top: 10 })
          .borderRadius(15)
        Text('黑暗王国')
          .fontSize(13)
          .fontColor(Color.Gray)
          .margin({ top: 10, left: 8 })
        Image($r('app.media.level_4'))
          .width(20).aspectRatio(1)
          .margin({ top: 10, left: 8})
          .borderRadius(15)
      }
      // 2.评论内容
      Row() {
        Text('字数越少，事情越大')
          .fontWeight(700)
          .fontSize(13)
          .fontColor(Color.Black)
          .margin({ left: 40, top: 0, bottom: 8})
      }
      // 3. 评论日期
      Row() {
        Text('3天前')
          .fontSize(13)
          .fontColor(Color.Gray)
        Row() {
          Image($r('app.media.like_unselect'))
            .width(15).aspectRatio(1)
          Text('99')
            .fontSize(11)
            .fontColor(Color.Gray)
        }
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
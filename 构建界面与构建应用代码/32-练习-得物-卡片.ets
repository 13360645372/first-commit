@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {

    Column() {
      Column() {
        Image($r('app.media.nick'))
          .width('100%')
          .borderRadius({
            topLeft: 5,
            topRight: 5
          })
        Text('今晚吃这个 | 每日艺术分享 No.43')
          .fontWeight(600)
          .lineHeight(22)
          .fontSize(16)
          .height(60)
        Row() {
          Row({ space: 5}) {
            Image($r('app.media.user'))
              .width(16)
              .borderRadius(8)
            Text('插画师分享聚集地')
              .fontSize(10)
              .fontColor('#999')
          }
          .layoutWeight(1)
          Row({ space: 5}) {
            Image($r('app.media.ic_like'))
              .width(12)
              .fillColor('#999')
            Text('2300')
              .fontSize(10)
              .fontColor('#666')
          }
        }
        .padding({ left: 15, right: 15})
      }
      .padding({ bottom: 15})
      .width(200)
      // .height(300)
      .backgroundColor(Color.White)
      .borderRadius(5)
    }
    .padding(10)
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')

  }
}
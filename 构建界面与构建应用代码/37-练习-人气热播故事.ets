@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {

    Column() {
      Column() {
        Text('VIP')
          .position({
            x: 0,
            y: 0
          })
          .zIndex(666)
          .width(40)
          .height(20)
          .fontColor('#fbe7a3')
          .fontStyle(FontStyle.Italic)
          .fontSize(14)
          // .padding({ left: 5})
          .textAlign(TextAlign.Center)
          .backgroundColor('#e49642')
          .borderRadius({
            topLeft: 10,
            bottomRight: 10
          })
          .border({ width: 2, color: '#fbe7a3'})

        Image($r('app.media.position_moco'))
          .width('100%')
          .height(210)
          .borderRadius(10)

        Row() {

          Image($r('app.media.position_earphone'))
            .width(20)
            .backgroundColor('#55b7f4')
            .borderRadius(10)
            .padding(3)
            .fillColor(Color.White)
            .margin({ left: 6, right: 6})
          Text('飞狗MOCO')
            .fontWeight(700)
            .fontSize(20)
        }
        // .padding(5)
        .height(30)
        .width('100%')

      }
      .width(160)
      .height(240)
      .backgroundColor(Color.White)
    }
    // .padding(20)
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')

  }
}
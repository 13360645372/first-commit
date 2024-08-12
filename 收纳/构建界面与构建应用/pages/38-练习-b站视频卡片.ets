@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {

    Column() {
      Column() {
        Stack({
          alignContent: Alignment.Bottom
        }) {
          Image($r('app.media.bz_img'))
            .width(200)
            .height(125)
            .borderRadius({topLeft: 10, topRight: 10})
          Row() {
            Row({space: 5}) {
              Image($r('app.media.bz_play'))
                .width(14)
                .fillColor(Color.White)
                // .margin({left: 5})
              Text('288万')
                .fontSize(12)
                .fontColor(Color.White)
                // .margin({left: 5})
            }
            .margin({right: 5})

            Row({space: 5}) {
              Image($r('app.media.bz_msg'))
                .width(14)
                .fillColor(Color.White)
                // .margin({left: 5})

              Text('8655')
                .fontSize(12)
                .fontColor(Color.White)
                // .margin({left: 5})
            }

            Blank()

            Text('4:33')
              .fontSize(12)
              .fontColor(Color.White)
              // .layoutWeight(1)
          }
          .padding({left: 5, right: 5})
          .width('100%')
          .height(24)
        }
        .width('100%')
        .height(125)
        Text('【凤凰传奇新歌】 欢迎来到国风统治区：唢呐一响神曲《铁衣流派推广曲》')
          .fontSize(13)
          .lineHeight(16)
          .textOverflow({ overflow: TextOverflow.Ellipsis})
          .maxLines(2)
          .margin({top: 4})
        Row() {
          Text('19万点赞')
            .padding(5)
            .borderRadius(2)
            .fontSize(10)
            .fontColor('#e66c43')
            .backgroundColor('#fef0ef')
          Image($r('app.media.bz_more'))
            .width(14)
            .fillColor('#')
        }
        .margin({top: 6})
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .width(200)
      .height(200)
      .borderRadius(10)
      .margin({ top: 10})
      .backgroundColor(Color.White)
    }
    // .padding(5)
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')

  }
}
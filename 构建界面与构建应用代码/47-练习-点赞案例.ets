import { image } from '@kit.ImageKit'

@Entry
@Component
struct Index {
  // 声明状态 颜色 点赞
  @State myColor: string = '#7e7e7e'
  @State myCount: number = 8888

  build() {
    Column() {
      Column({space: 6}) {
        Image($r('app.media.eyes'))
          .width('100%')
          .borderRadius({ topLeft: 6, topRight: 6 })
        Text('考眼力又来了你能看到几只鸭子？')
          .fontSize(14)
          .lineHeight(18)
          .padding({ left: 5, right: 5})
        Row() {
          Text() {
            ImageSpan($r('app.media.avatar1'))
              .width(16)
              .margin({ right: 3 })
            Span('视野联行眼睛')
              .fontSize(12)
              .fontColor('#7e7e7e')
          }
          Row() {
            Image($r('app.media.ic_love'))
              .margin({right: 3})
              .width(14)
              .fillColor(this.myColor)
            Text(this.myCount.toString())
              .fontSize(12)
              .fontColor(this.myColor)
          }
          .onClick(() => {
            this.myColor = '#ff0000'
            this.myCount += 1
          })
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        .padding({ left: 5, right: 5 })
      }
      .width('50%')

    }
    .padding(20)
  }
}
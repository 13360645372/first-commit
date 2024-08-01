// 1、定义结构
interface ImageCount {
  url: string
  count: number
}




@Entry
@Component
struct Index {
  // 2、准备数据
  @State images: ImageCount[] = [
    { url: 'app.media.bg_00' , count: 0},
    { url: 'app.media.bg_01' , count: 1},
    { url: 'app.media.bg_02' , count: 2},
    { url: 'app.media.bg_03' , count: 3},
    { url: 'app.media.bg_04' , count: 4},
    { url: 'app.media.bg_05' , count: 5},
  ]
  @State maskOpacity: number = 0
  @State maskZIndex: number = -1
  @State maskImgX: number = 0
  @State maskImgY: number = 0

  build() {
    Stack() {
      Column() {
        Grid() {
          ForEach(this.images, (item: ImageCount, index: number) => {
            GridItem() {
              Badge({
                count: item.count,
                position: BadgePosition.RightTop,
                style: {
                  fontSize: 14,
                  badgeSize: 20,
                  badgeColor: '#fa2a2d'
                }
              }) {
                Image($r(item.url))
                  .width(80)
              }
            }
          })
        }
        .columnsTemplate('1fr 1fr 1fr')
        .rowsTemplate('1fr 1fr')
        .width('100%')
        .height(300)
        .margin({ top: 100 })


        Button('立刻抽卡')
          .width(200)
          .backgroundColor('#ed5b8c')
          .margin({top: 50})
          .onClick(() => {
            this.maskOpacity = 1
            this.maskZIndex = 99
            this.maskImgX = 1
            this.maskImgY = 1
          })
      }
      .width('100%')
      .height('100%')
      // .backgroundColor(Color.Pink)

      // 抽卡后的弹窗
      Column({ space: 30}) {
        Text('获得生肖卡')
          .fontSize(16)
          .fontColor('#f5ebcf')
          .fontWeight(700)
        Image($r('app.media.img_00'))
          .width(200)
        // 控制元素的缩放
          .scale({
            x: this.maskImgX,
            y: this.maskImgY,
          })
          .animation({
            duration: 500
          })
        Button('开心收下')
          .width(200)
          .height(50)
          .backgroundColor(Color.Transparent)
          .border({ width: 2, color: '#fff9e0'})
          .onClick(() => {
            this.maskOpacity = 0
            this.maskZIndex = -1
            this.maskImgX = 0
            this.maskImgY = 0
          })

      }
      .justifyContent(FlexAlign.Center)
      .width('100%')
      .height('100%')
      .backgroundColor('#cc000000')
      .opacity(this.maskOpacity)
      .zIndex(this.maskZIndex)
      // 当元素有状态的改变，可以加animation做动画
      .animation({
        duration: 1000
      })
    }
  }
}
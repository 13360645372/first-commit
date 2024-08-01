// 定义数组类型
import { faceDetector } from '@kit.CoreVisionKit'

interface ImageCount {
  url: string
  count: number
}




@Entry
@Component
struct Index {


  @State images: ImageCount[] = [
    { url: 'app.media.bg_00' , count: 0},
    { url: 'app.media.bg_01' , count: 0},
    { url: 'app.media.bg_02' , count: 0},
    { url: 'app.media.bg_03' , count: 0},
    { url: 'app.media.bg_04' , count: 0},
    { url: 'app.media.bg_05' , count: 0},
  ]

  // 透明度的数值
  @State maskOpacity: number = 0
  // 显示层级的数
  @State maskZIndex: number = -1
  // 随机卡片序号
  @State randomIndex: number = -1
  // 显影的变量
  @State isGet: boolean = false

  @State arr: string[] = ['hw', 'pg', 'xm']
  @State prize: string = ''



  build() {
    Stack() {
      // 初始界面
      Column() {
        Grid() {
          ForEach(this.images, (item: ImageCount, index: number) => {
            GridItem() {
              // 角标
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

        Button('立即抽卡')
          .width(200)
          .backgroundColor('#ed5b8c')
          .margin({top: 50})
          .onClick(() => {
            this.maskOpacity = 1
            this.maskZIndex = 99

            this.randomIndex = Math.floor(Math.random() * 6)
          })
      }
      .width('100%')
      .height('100%')

      // 抽卡后的界面
      Column({space: 30}) {
        Text('获得生肖卡')
          .fontSize(16)
          .fontColor('#f5ebcf')
          .fontWeight(700)
        Image($r(`app.media.img_0${this.randomIndex}`))
          .width(200)
          // .scale({
          //   x: 1,
          //   y: 1
          // })
        Button('开心收下')
          .width(200)
          .height(50)
          .backgroundColor(Color.Transparent)
          .border({ width: 2, color: '#fff9e0'})
          .onClick(() => {
            this.maskOpacity = 0
            this.maskZIndex = -1

            this.images[this.randomIndex] = {
              url: `app.media.img_0${this.randomIndex}`,
              count: this.images[this.randomIndex].count + 1
            }

            let flag: boolean = true

            for (let item of this.images) {
              if (item.count == 0) {
                flag = false
                break
              }
            }


            this.isGet = flag

            if (this.isGet) {
              let randomIndex: number = Math.floor(Math.random() * 3)
              this.prize = this.arr[randomIndex]
            }
          })
      }
      .justifyContent(FlexAlign.Center)
      .width('100%')
      .height('100%')
      .backgroundColor('#cc000000')
      .zIndex(this.maskZIndex)
      .opacity(this.maskOpacity)
    //   弹窗动画
      .animation({
        duration: 1000
      })

      if (this.isGet) {
        Column({ space: 30}) {
          Text('恭喜获得手机一部')
            .fontColor('#f5ebcf')
            .fontSize(25)
            .fontWeight(700)
          Image($r(`app.media.${this.prize}`))
            .width(300)
          Button('再来一次')
            .width(200)
            .height(50)
            .backgroundColor(Color.Transparent)
            .border({width: 2, color: '#fff9e0'})
            .onClick(() => {
              this.isGet = false
              this.prize = ''
              for (let i: number = 0; i <= 5; i++) {
                // let item: ImageCount[] = this.images[i]
                if (this.images[i].count == 1) {
                  this.images[i] = { url: `app.media.bg_0${i}` , count: 0}
                }
                else {
                  // let img: string = 'img'
                  this.images[i] = { url: `app.media.img_0${i}` , count: this.images[i].count - 1}
                }
              }
            })
        }
        .justifyContent(FlexAlign.Center)
        .width('100%')
        .height('100%')
        .backgroundColor('#cc000000')
      }
    }

  }
}
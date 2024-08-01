// 1、定义结构
interface ImageCount {
  url: string
  count: number
}

// 求随机数：Math.random
// 向下取整：Math.floor
// console.log('随机数', Math.floor(Math.random() * 6))



@Entry
@Component
struct Index {
  // 随机的生肖卡序号
  @State randomIndex: number = -1

  // 2、准备数据
  @State images: ImageCount[] = [
    { url: 'app.media.bg_00' , count: 0},
    { url: 'app.media.bg_01' , count: 0},
    { url: 'app.media.bg_02' , count: 0},
    { url: 'app.media.bg_03' , count: 0},
    { url: 'app.media.bg_04' , count: 0},
    { url: 'app.media.bg_05' , count: 0},
  ]
  @State maskOpacity: number = 0
  @State maskZIndex: number = -1


  @State maskImgX: number = 0
  @State maskImgY: number = 0

  // 控制中大奖遮罩的显影
  @State isGet: boolean = false

  @State arr: string[] = ['pg', 'hw', 'xm']
  @State prize: string = ''

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

            this.randomIndex = Math.floor(Math.random() * 6)
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
        Image($r(`app.media.img_0${this.randomIndex}`))
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
            // 开心收下，对象数组的情况需要更新，需要修改替换整个对象
            this.images[this.randomIndex] = {
              url: `app.media.img_0${this.randomIndex}`,
              count: this.images[this.randomIndex].count + 1
            }

          //   每次收完卡片，需要进行简单的检索，判断是否集齐
          //   需求：判断数组项的count，是否都大于0，
            let flag: boolean = true

            for (let item of this.images) {
              if (item.count == 0) {
                flag = false
                break
              }
            }

            this.isGet = flag

            if (flag) {
              let randomIndex: number = Math.floor(Math.random() * 3)
              this.prize = this.arr[randomIndex]
            }
          })

      }
      .justifyContent(FlexAlign.Center)
      .width('100%')
      .height('100%')
      .backgroundColor('#cc000000')
      // 透明度
      .opacity(this.maskOpacity)
      // 显示层级
      .zIndex(this.maskZIndex)
      // 当元素有状态的改变，可以加animation做动画
      .animation({
        duration: 1000
      })

      if (this.isGet) {
        Column({space: 30}) {
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
              this.images = [
                { url: 'app.media.bg_00' , count: 0},
                { url: 'app.media.bg_01' , count: 0},
                { url: 'app.media.bg_02' , count: 0},
                { url: 'app.media.bg_03' , count: 0},
                { url: 'app.media.bg_04' , count: 0},
                { url: 'app.media.bg_05' , count: 0},
              ]
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
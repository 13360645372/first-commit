interface Car {
  name: string
  brand: string
}

@Entry
@Component
struct Index {
  // @Provide
  // @Consume
  // 可以跨层级使用

  @Provide themeColor: string = 'red'
  @Provide car: Car = {
    name: 'mt',
    brand: 'xh'
  }

  build() {
    Column() {
      Text('顶级组件')
        .fontSize(30)
        .fontWeight(900)
      Text(this.themeColor)

      ParentComponent()
      ParentComponent()
    }
    .padding(10)
    .height('100%')
    .backgroundColor('#ccc')
    .width('100%')
    .alignItems(HorizontalAlign.Center)
    .padding({top: 100})
  }
}

@Component
struct ParentComponent {
  @Consume themeColor: string
  build() {
    Column({ space: 20 }) {
      Text('我是二层组件' + this.themeColor)
        .fontSize(22)
        .fontWeight(900)

      SonComponent()

    }
    .backgroundColor('#a6c398')
    .alignItems(HorizontalAlign.Center)
    .width('90%')
    .margin({ top: 50 })
    .padding(10)
    .borderRadius(10)
  }
}

@Component
struct SonComponent {
  @Consume themeColor: string
  @Consume car: Car
  build() {
    Column() {
      Text('我是内层组件' + this.themeColor)
        .fontSize(20)
        .fontWeight(900)
        .onClick(() => {
          this.themeColor = 'yellow'
          this.car.name = 'aaa'
        })
      Text(JSON.stringify(this.car))
    }
    .backgroundColor('#bf94e4')
    .alignItems(HorizontalAlign.Center)
    .width('90%')
    .margin({ top: 50 })
    .padding(10)
    .borderRadius(10)
  }
}


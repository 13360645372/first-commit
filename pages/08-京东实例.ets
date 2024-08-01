@Entry
@Component
struct Index3 {
  myScroll: Scroller = new Scroller()
  @State yOffset: number = 0 //实时保存y轴的距离
  build() {
    Column() {
      Stack({ alignContent: Alignment.BottomEnd }) {
        // 顶部滚动区域
        Scroll(this.myScroll) {
          Column() {
            Image($r('app.media.ic_jd_scroll_01'))
            Image($r('app.media.ic_jd_scroll_02'))
            Image($r('app.media.ic_jd_scroll_03'))
          }
        }
        .scrollBar(BarState.Off)
        .width('100%')
        // .backgroundColor(Color.Orange)
        .onDidScroll(() => {
          this.yOffset = this.myScroll.currentOffset().yOffset
        })
        .edgeEffect(EdgeEffect.Spring)

        // 有时显示有时隐藏
        if (this.yOffset > 400) {
          Image($r('app.media.ic_jd_rocket'))
            .width(40)
            .backgroundColor(Color.White)
            .borderRadius(20)
            .padding(5)// .margin({right:20,bottom:20})
            .offset({ x: -20, y: -20 })
            .onClick(() => {
              this.myScroll.scrollEdge(Edge.Top)
            })
        }

      }
      .layoutWeight(1)

      // 底部 tabbar 图片(后面会学)
      Image($r('app.media.ic_jd_tab'))
        .width('100%')
    }
  }
}
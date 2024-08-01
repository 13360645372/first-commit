
@Entry
@Component
struct Index {
  // 准备状态
  @State selectedIndex: number = 0

  @Builder
  centerImage (){
    Image($r('app.media.ic_reuse_02'))
      .width(40)
      .margin({bottom: 10})
  }

  @Builder
  myBuilder (itemIndex: number, title: string, img: ResourceStr, selimg: ResourceStr) {

    Column() {
      Image(
        itemIndex == this.selectedIndex ? selimg : img
      )
        .width(30)
      Text(title)
        .fontColor(itemIndex == this.selectedIndex ? Color.Red : Color.Black)
    }
  }
  build() {
    Tabs({ barPosition: BarPosition.End}){
      TabContent() {
        Text(`首页内容`)
      }
      .tabBar(this.myBuilder(0, '首页', $r('app.media.ic_tabbar_icon_0'), $r('app.media.ic_tabbar_icon_0_selected')))
      TabContent() {
        Text(`分类`)
      }
      .tabBar(this.myBuilder(1, '分类', $r('app.media.ic_tabbar_icon_1'), $r('app.media.ic_tabbar_icon_1_selected')))
      TabContent() {
        Text('活动内容')
      }
      .tabBar(this.centerImage())
      TabContent() {
        Text(`购物车内容`)
      }
      .tabBar(this.myBuilder(3, '购物车', $r('app.media.ic_tabbar_icon_2'), $r('app.media.ic_tabbar_icon_2_selected')))
      TabContent() {
        Text('我的内容')
      }
      .tabBar(this.myBuilder(4, '我的', $r('app.media.ic_tabbar_icon_3'), $r('app.media.ic_tabbar_icon_3_selected')))
    }
    .onChange((index: number) => {
      // console.log('激活的索引', index)
      this.selectedIndex = index
    })


  }
}
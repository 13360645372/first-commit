@Entry
@Component
struct Index {
  build() {
    // 调整位置
    Tabs({ barPosition: BarPosition.End}) {
      TabContent() {
        Column() {
          Text('首页内容')
        }
      }
      .tabBar('首页')

      TabContent() {
        Text('推荐')
      }
      .tabBar('推荐')

      TabContent() {
        Text('发现内容')
      }
      .tabBar('发现')

      TabContent() {
        Text('首页内容')
      }
      .tabBar('我的')
    }
    // 调整导航水平或垂直
    .vertical(false)
    // 是否开启手势滑动
    .scrollable(false)
    // 切换动画的时间
    .animationDuration(0)
  }
}
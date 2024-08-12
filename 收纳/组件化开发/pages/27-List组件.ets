import InfoTop from '../components/InfoTop'


@Entry
@Component
struct Index {
  build() {
    Column() {
      // 头部
      InfoTop()
      // 中间
      List() {
        ForEach(Array.from({length: 20}), () => {
          ListItem() {
            Row() {}.width('100%').height(100).backgroundColor(Color.Red)
          }
          .padding(10)
        })
      }
      // .listDirection(Axis.Vertical)// 调整主轴方向
      // .lanes(2,10) // 调整 列数 和 间距
      .alignListItem(ListItemAlign.Center) // 列对齐方式
      .scrollBar(BarState.Auto) //Auto按需自动显示滚动条
      /*.divider({
        strokeWidth: 3, // 线宽
        color: Color.Blue, // 颜色
        startMargin: 10, // 左边线距离边缘的间隙
        endMargin: 10 // 右边线距离边缘的间隙
      })*/
      .width('100%')
      .layoutWeight(1)
      .backgroundColor(Color.Orange)
      // 底部
      Row() {

      }
      .width('100%')
      .height(60)
      .backgroundColor(Color.Pink)
    }
    .width('100%')
    .height('100%')
  }
}
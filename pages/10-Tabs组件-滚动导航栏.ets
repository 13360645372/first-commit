import { it } from '@ohos/hypium'

@Entry
@Component
struct Index {
  titles: string[] = [
    '首页', '首页', '首页', '首页', '首页',
    '首页', '首页', '首页', '首页', '首页'
  ]
  build() {
    Tabs(){
      ForEach(this.titles, (item: string, index: number) => {
        TabContent() {
          Text(`${item}内容`)
        }
        .tabBar(item)
      })
    }
    // barMode属性，可以实现滚动导航栏
    .barMode(BarMode.Scrollable)
  }
}
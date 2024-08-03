import { router } from '@kit.ArkUI'

@Entry
@Component
struct Index {
  build() {
    Column() {
      Text('初始界面')
        .fontSize(20)
      Button('去编辑页')
        .onClick(() => {
          // pushUrl 点击后可以返回
          router.pushUrl({
            url: 'pages/EditPage'
          })
        })
      Button('去详情页')
        .onClick(() => {
          router.pushUrl({
            url: 'pages/DetailPage'
          })
        })
    }
  }
}
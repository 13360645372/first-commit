import { router } from '@kit.ArkUI'

@Entry
@Component
struct DetailPage {
  build() {
    Column() {
      Text('详情页面')
        .fontSize(30)
      Button('获取页面长度')
        .onClick(() => {
          AlertDialog.show({
            message: router.getLength()
          })
        })
      Button('跳转')
        .onClick(() => {
          router.pushUrl({
            url: 'pages/EditPage'
          },router.RouterMode.Single)
        })
    }
  }
}
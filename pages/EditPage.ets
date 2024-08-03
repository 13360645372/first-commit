import { router } from '@kit.ArkUI';

@Entry
@Component
struct EditPage {
  @State message: string = '编辑页面';

  build() {
    Column() {
      Text(this.message)
        .id('EditPageHelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
      Button('跳转')
        .onClick(() => {
          router.pushUrl({
            url: 'pages/DetailPage'
          },router.RouterMode.Single)
        //   路由模式router.RouterMode.Single 或者 Standard
        })

      // router.getLength() 获取页面栈长度
      Button('获取页面长度')
        .onClick(() => {
          AlertDialog.show({
            message: router.getLength()
          })
        })

      // router.clear() 清空页面栈
      Button('清空页面栈')
        .onClick(() => {
          router.clear()
        })
    }
    .height('100%')
    .width('100%')
  }
}
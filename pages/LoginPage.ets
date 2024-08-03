import { router } from '@kit.ArkUI'

@Entry
@Component
struct LoginPage {

  build() {
    Column() {
      Text('登录页')
        .fontSize(80)
      Button('登录到首页')
        .onClick(() => {
          // replaceUrl 点击后不可返回
          router.pushUrl({
            url: 'pages/Index'
          })
        })
    }
  }
}
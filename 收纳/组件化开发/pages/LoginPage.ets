import { router } from '@kit.ArkUI'

@Entry
@Component
struct LoginPage {
  @State username: string = ''

  build() {
    Column() {
      Text('登录页')
        .fontSize(80)
      TextInput({
        text: $$this.username,
        placeholder: '请输入用户名'
      })
      Button('登录到首页')
        .onClick(() => {
          // replaceUrl 点击后不可返回
          router.pushUrl({
            url: 'pages/Index',
            // 传入参数
            params: {
              username: this.username,
              msg: '测试信息'
            }
          })

        })
    }
  }
}
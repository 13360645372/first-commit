
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
//构建 -> 界面
  build() {
    Column({ space: 20 }) {
      Image($r('app.media.startIcon'))
        .width(50)
      TextInput({
        placeholder: '请输入用户名'
      })
        // .width(320)
      TextInput({
        placeholder: '请输入密码'
      })
        .type(InputType.Password)
        // .width(320)
      Button('登录')
        .width('100%')
      Row({ space: 15}) {
        Text('前往注册')
        Text('忘记密码')
      }
    }
    .width('100%')
    .padding(20)
  }
}
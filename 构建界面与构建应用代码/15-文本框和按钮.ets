
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
//构建 -> 界面
  build() {
    //控制组件间的间隙，{ space: 10 }可以给Column 和 Row
    Column({ space: 10 } ){
      TextInput({
        placeholder: '请输入用户名'
      })
        .type(InputType.Normal)


      TextInput({
        placeholder: '请输入密码'
      })
        .type(InputType.Password)
      Button('登录')
        .width(200)
    }
  }
}
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {

    Column() {
      Column() {
        // 顶部
        Row() {
          Image($r('app.media.jd_cancel'))
            .width(20)

          Text('帮助')
            // .layoutWeight(1)
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        //图片logo
        Image($r('app.media.jd_logo'))
          .width(250)
          .height(250)


        Row() {
          Text('国家/地址')
            .layoutWeight(1)
            .margin({left: 15})
            .fontColor('#666')
          Text('中国(+86)')
            .fontColor('#666')
            .margin({right: 5})
          Image($r('app.media.jd_right'))
            .width(20)
            .margin({right: 10})
            .fillColor('#666')
        }
        .width('100%')
        .height(40)
        .backgroundColor(Color.White)
        .borderRadius(20)
        // TextInput({})
        //   .width('100%')
        //   .height(40)
        //   .backgroundColor(Color.White)

        TextInput({placeholder: '请输入手机号'})
          .placeholderColor('#666')
          .height(40)
          .backgroundColor(Color.White)
          .margin({ top: 20, bottom: 20})

        Row() {
          Checkbox()
            .margin({ top: 7})
            .width(10)
          Text() {
            Span('我已经阅读并同意')
            Span('《京东隐私政策》').fontColor('#3274f6')
            Span(' 《京东用户服务协议》').fontColor('#3274f6')
            Span('未注册的手机号将自动创建京东账号')
          }
          .fontSize(12)
          .lineHeight(20)
          .fontColor('#666')


        }
        .alignItems(VerticalAlign.Top)
        .margin({ bottom: 25})
        Button('登录')
          .backgroundColor('#bf2838')
          .width("100%")

        Row() {
          Text('新用户注册')
            .fontSize(14)
            .fontColor('#666')
          Text('账户密码登录')
            .fontSize(14)
            .fontColor('#666')
            .margin({left: 25, right: 25})
          Text('无法登录')
            .fontSize(14)
            .fontColor('#666')
        }
        .margin({top: 15, bottom: 40})

        Column() {
          Text('其他方式登录')
            .fontSize(14)
            .fontColor('#666')
            .height(22)
            .margin({bottom: 28})
          Row() {
            Image($r('app.media.jd_huawei'))
              .width(34)
              .height(34)
            Image($r('app.media.jd_wechat'))
              .width(34)
              .height(34)
              .fillColor('#56a44a')
            Image($r('app.media.jd_weibo'))
              .width(34)
              .height(34)
              .fillColor('#c8493b')
            Image($r('app.media.jd_QQ'))
              .width(34)
              .height(34)
              .fillColor('#4ba0e8')
          }
          .width('100%')
          .margin({bottom: 30})
          .justifyContent(FlexAlign.SpaceAround)
        }
        .width('100%')
        // .backgroundColor(Color.White)
        // .margin({ bottom: 50})
      }

    }
    .padding(20)
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
    .backgroundImage($r('app.media.jd_login_bg'))
  }
}
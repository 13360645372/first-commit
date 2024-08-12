import { router } from '@kit.ArkUI';

@Entry
@Component
struct LoginPages {
  @State message: string = '登录页';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('LoginPagesHelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .onClick(() => {
          router.pushUrl({
            url: 'pages/Index'
          })
        })
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}
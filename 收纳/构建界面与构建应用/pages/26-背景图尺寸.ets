@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text()
        .width(300)
        .height(200)
        .backgroundColor(Color.Pink)
        .backgroundImage($r('app.media.jd_logo'))
        .backgroundImagePosition(Alignment.Center)
        // 背景尺寸：
        // 1、({ wight： 数字, height: 数字})
        // 2、枚举ImageSize
        .backgroundImageSize(ImageSize.Cover)
    }
    .padding(20)
    .width('100%')
  }
}
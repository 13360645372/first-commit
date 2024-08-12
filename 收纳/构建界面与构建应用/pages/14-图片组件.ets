
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
//构建 -> 界面
  build() {
    Column(){
      // 网页地址图片
      // Image('https://www.itheima.com/images/logo.png')
        // .width(200)
      // 本地图片加载 Image($r('app.media.文件名'))
      Image($r('app.media.startIcon'))
        .width(200)
      Row(){

      }
      // .width('100%')
    }
    .width(200)
  }
}
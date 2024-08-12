@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column() {
      // svg特点：
      // 1、任意放大缩小不失真
      // 2、可以修改颜色（fillColor）
      Image($r('app.media.ic_late'))
        .width(200)
        .fillColor(Color.Orange)
      Image($r('app.media.icon'))
        .width(50)
    }
  }
}
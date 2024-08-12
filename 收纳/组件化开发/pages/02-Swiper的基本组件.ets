
@Entry
@Component
struct Index {

  build() {
    Column() {
      // Swiper 轮播组件的基本使用
      // 1、Swiper 包内容
      // 2、Swiper 设尺寸
      Swiper() {
        Text('1')
          .backgroundColor(Color.Orange)
        Text('2')
          .backgroundColor(Color.Yellow)
        Text('3')
          .backgroundColor(Color.Red)
      }
      .width('100%')
      .height(100)
      .loop(true)// 开启循环
      .autoPlay(true) // 自动播放
      .interval(5000) // 自动播放间隔
      .vertical(true) // 改成纵向轮播

      Swiper() {
        Image($r('app.media.ic_swiper_xmyp01'))
        Image($r('app.media.ic_swiper_xmyp02'))
        Image($r('app.media.ic_swiper_xmyp03'))
        Image($r('app.media.ic_swiper_xmyp04'))

      }
      .width('100%')
      .height(150)
    }
    // .backgroundColor('#ccc')
  }
}
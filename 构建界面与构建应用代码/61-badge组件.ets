

@Entry
@Component
struct Index {


  build() {
    Column() {
      Badge({
        count: 2, //角标数值
        position: BadgePosition.RightTop, // 角标位置
        style: {
          fontSize: 14,// 文字大小
          badgeSize: 20, // 圆形大小
          badgeColor: '#fa2a2d' // 圆心底色
        }
      }) {
        Image($r('app.media.bg_01'))
          .width(100)
      }
      Badge({
        count: 2,
        position: BadgePosition.RightTop,
        style: {
          fontSize: 14,
          badgeSize: 20,
          badgeColor: '#fa2a2d'
        }
      }) {
        Image($r('app.media.bg_00'))
          .width(100)
      }
    }
  }
}
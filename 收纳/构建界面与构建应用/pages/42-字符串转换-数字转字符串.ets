//
let money: number = 10000.1
// 将字符串转字符串，toString()   toFixed()


@Entry
@Component
struct Index {
  @State message: string = 'holle world';

  build() {
    Row() {
      Column() {
        Text(money.toString())
          .fontSize(50)
          .fontWeight(700)
        Text(money.toFixed(2))
          .fontSize(50)
          .fontWeight(700)
      }
    }
  }
}
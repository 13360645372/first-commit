// + - * / %
console.log('计算结果', 1 + 1)
console.log('计算结果', 3 - 1)
console.log('计算结果', 3 * 5)
console.log('计算结果', 9 / 3)
console.log('计算结果', 9 % 2)

// 赋值运算符
// += -= *= /= %=
let num: number = 9
num %= 5
console.log(num.toString())

@Entry
@Component
struct Index {
  @State num: number = 1

  build() {
    Row() {
      Column() {


      }
      .width('100%')
    }
    .height('100%')
  }
}
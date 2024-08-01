// console.log('五角星','☆')
// console.log('五角星','☆☆')
// console.log('五角星','☆☆☆')
// console.log('五角星','☆☆☆☆')
// console.log('五角星','☆☆☆☆☆')
//
// console.log('五角星','☆')
// console.log('五角星','☆☆')
// console.log('五角星','☆☆☆')
// console.log('五角星','☆☆☆☆')
// console.log('五角星','☆☆☆☆☆')
//
// console.log('五角星','☆')
// console.log('五角星','☆☆')
// console.log('五角星','☆☆☆')
// console.log('五角星','☆☆☆☆')
// console.log('五角星','☆☆☆☆☆')
//函数-Function
//定义函数  function 函数名（）{  函数体  }

function star() {
  console.log('五角星','☆')
  console.log('五角星','☆☆')
  console.log('五角星','☆☆☆')
  console.log('五角星','☆☆☆☆')
  console.log('五角星','☆☆☆☆☆')
}

star()




@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}
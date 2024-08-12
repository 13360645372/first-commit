//箭头函数
//语法  let 函数名 = () => {}

let star = () =>{
  console.log('五角星','☆')
  console.log('五角星','☆☆')
  console.log('五角星','☆☆☆')
  console.log('五角星','☆☆☆☆')
  console.log('五角星','☆☆☆☆☆')
}

star()

let buy = (price:number,weight:number) =>{
  console.log('输入的数据',price,weight)
  let result:number = price * weight
  return result
}
let apple:number = buy(2,3)
console.log('苹果的价格：',apple)
let banana:number = buy(4,4)
console.log('香蕉的价格：',banana)

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
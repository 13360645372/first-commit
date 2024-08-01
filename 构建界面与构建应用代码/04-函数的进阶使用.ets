//传入 价格 和 数量, 返回 计算的结果
function buy(price: number,num: number){
  console.log('输入的数据',price,num)
  //处理数据
  let result: number =price * num
  //返回结果
  return result
}

let apple: number = buy(2,3)
console.log('苹果',apple)

let banana: number = buy(4,4)
console.log('香蕉',banana)


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
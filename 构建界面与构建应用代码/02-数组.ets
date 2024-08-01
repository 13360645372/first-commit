//数组语法： let 数据名: 类型[] = [数组1，数组2,...]

//数组中存储的每个数据，都有自己的编号，编号从0开始（也称索引）
let names: string[] = ['李俊杰','谢器官','梁迦轩']
console.log('数组names：',names)

//利用有序编号（索引）取数组的数据
//取数据：数组名[索引]
console.log('大傻逼是',names[1])

//注意：数组声明好的类型， 后面的存的数据必须和他一致




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
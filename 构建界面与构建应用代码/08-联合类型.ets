//联合类型
//联合类型是一张灵活的数据类型，他修饰的变量可以存储不同类型的数据
//语法： let 类型1|类型2|类型3 = 值
let judge: number | string | boolean = 100
console.log('年终考试评价', judge)
judge = 'A+'
console.log('年终考试评价', judge)
judge = '优秀'
console.log('年终考试评价', judge)
judge = true
console.log('年终考试评价', judge)

//联合类型还可以将变量值，约定在一组数据范围内进行选择
//性别： 男 女 保密
let gender: 'man' | 'woman' | 'secret'




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
//接口&对象
//对象-定义&使用
//let 对象名称：对象结构类型 = 值


//定义接口
interface Person{
  name: string
  age: number
  weight: number
}
//基于接口，定义对象
let ym: Person = {
  name: '杨幂',
  age: 18,
  weight: 90
}

//获取对象属性值 对象名。属性名
console.log('ym的体重',ym.weight)

//基于接口可以多次定义对象，这些对象有着相同的结构类型
let lss:Person = {
  name: '刘诗诗',
  age: 19,
  weight: 89
}

console.log('lss的年龄',lss.age)




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
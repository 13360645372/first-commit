// 类 实例属性
/*class 类名 {
  字段名: 类型 = '初始值'
  字段名?: 类型
}*/
/*class Person {
  name: string = 'Tom'
  gender?: string
}

let p: Person = new Person()
console.log('姓名：', p.name.length)

p.gender = 'man'
console.log('性别：', p.gender?.length)*/


// Class 构造函数
/*class Person {
  字段A: 类型
  字段B: 类型

  constructor(参数...) {
    this.字段A = 参数
  }
}*/

/*class Food {
  name: string
  price: number

  constructor(name: string, price: number) {
    this.name = name
    this.price = price
  }
}*/

/*let apple: Food = new Food('苹果', 1.2)
let banner: Food = new Food('香蕉', 1.5)
console.log('苹果',apple.name, apple.price)
console.log('苹果',banner.name, banner.price)*/

/*interface IFood {
  name: string
  price: number
  desc: string
}

class Food {
  name: string
  price: number
  desc: string
  // 传的参数可以合并为类型再传
  constructor(paramsObj: IFood) {
    this.name = paramsObj.name
    this.price = paramsObj.price
    this.desc = paramsObj.desc
  }
}
let p1: Food = new Food({
  name: '西兰花',
  price: 50,
  desc: '好吃'
})

console.log('名称', p1.name)*/

// class 定义方法
/*class 名称 {
  字段A: 类型
  字段B: 类型

  constructor(参数1...) {
    this.字段A = 参数1
  }

  函数名(参数2) {
    console.log(`holle,${参数2}, 我是${this.字段A}`)
  }
}*/

/*class Person {
  name: string
  age: number

  constructor(name: string, age: number) {
    this.name = name
    this.age = age
  }

  sayhi (yourName: string) {
    console.log(`hello,${yourName},我是${this.name}`)
  }
}*/

/*let p1: Person = new Person('大怪兽', 1000)
p1.sayhi('凹凸曼')*/

// class 静态属性 和 静态方法
/*class Robot {
  static version: string = 'v2.0'
  static getRandom(): number {
    return Math.random()
  }
}*/

// console.log('Robot类的版本', Robot.version)
// console.log('工具方法', Robot.getRandom())






@Entry
@Component
struct Index {



  build() {



  }
}
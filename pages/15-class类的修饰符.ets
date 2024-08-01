// 修饰符 readonly
/*class Cat {
  name: string
  age: number
  // 不可修改，只可读取
  readonly legs: number = 4

  constructor(name: string, age: number) {
    this.name = name
    this.age = age
  }
}
let c1: Cat = new Cat('小花', 5)
c1.name = '小名'*/

// 修饰符 private
/*
class Person {
  name: string = 'tom'
  private age: number = 0

}
let p = new Person()
console.log('实例访问', p.name)
*/


/*class Student extends Person {
  sayhi() {
    console.log('访问私有属性', super.name) // 私有数据无法再外部（子类）访问
  }
}*/


// 修饰符 protected
/*class Person {
  protected  name: string = 'tom'
  private age: number = 0
  desc: string = '描述'

  constructor(name: string, age: number) {
    this.name = name
    this.age = age
  }
}

let p = new Person('小王', 18)
console.log('实例访问', p.name) // 无法在外部访问受保护的数据

class Student extends Person {
  sayhi() {
    console.log('访问私有属性', super.name) // 保护的数据可以在子类访问
  }
}*/

// public 公共的 （默认）



@Entry
@Component
struct Index {



  build() {



  }
}
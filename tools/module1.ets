// 一个ets文件就是一个模块，每个模块之间独立

class Person {
  name: string = 'Tom'
  age: number = 15
  gender: string = 'man'
}

let s1: Person = new Person()
let num: number = 10


// 默认导出只能导出一个值或者一个对象
export default s1
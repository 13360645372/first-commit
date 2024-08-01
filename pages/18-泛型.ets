// 泛型：广泛的类型 => 类型可以作为参数传递过来，类型是[可变]的
import { ValueType } from '@kit.ArkData'

// 泛型函数
/*
function 函数名<Type> (形参: Type): Type {
  return 形参
}
*/

// 封装了一个函数：传入什么样的参数，就立刻返回什么样的参数
/*function fn<T> (param: T): T {
  return param
}
fn<string>('abc')
fn<number>(156)
fn<boolean>(true)
fn<number[]>([1,2,3,4,5,6])*/

/*function getLength<T> (arr: T[]): number {
  return arr.length
}

console.log('', getLength<number>([1,2,3]))
console.log('', getLength<string>(['1','2','3','cc']))*/

/*function getLast<T> (arr: T[]): T {
  return arr[arr.length - 1]
}

console.log('', getLast<Number>([1,2,3,4,5,6,10]))*/


// 泛型约束：给传递的类型参数，添加限制
/*interface ILength {
  length: number
}

function fn<T extends ILength>(param: T) {
  console.log('',param.length)
}

// fn<Boolean>(true)
fn<number[]>([1,2,3])

class Desk {
  length = 2
}
let d = new Desk()
fn<Desk>(d)*/

// 多个泛型参数
/*function fn<T1,T2>(param1: T1, param2: T2) {
  console.log('参数1', param1)
  console.log('参数2', param2)
}
fn<string, Boolean>('123', false)
fn<string[], number[]>(['a', 'b'], [1,6])*/

// 泛型接口
/*interface 接口<T> {
  // 内容使用T
}*/
/*interface IDFunc<T> {
  Id: (value: T) => T
  ids: () => T[]
}

let obj: IDFunc<number> = {
  Id(value: number) {
    return value
  },
  ids() {
    return [1,2,3]
  }
}

let obj1: IDFunc<string> = {
  Id(value: string) {
    return value
  },
  ids() {
    return ['122','123','124']
  }
}*/

// 泛型类
/*class Person<T> {
  id: T

  constructor(id: T) {
    this.id = id
  }

  getId (): T {
    return this.id
  }
}

let s1: Person<number> = new Person<number>(10)
let s2: Person<string> = new Person<string>('sa11')*/


@Entry
@Component
struct Index {
  build() {

  }
}
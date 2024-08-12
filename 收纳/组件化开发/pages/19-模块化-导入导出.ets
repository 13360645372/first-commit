// 默认导入
import Mynum from '../tools/module1'
import fn from './module2'

// 按需导入（导入需要名字相对应）如果需要改名则加as
// import {name1, price, sayHi as sayhi} from '../tools/module3'

// 全部导入
import * as Module3 from '../tools/module3'
fn()
console.log('', JSON.stringify(Mynum))

console.log('', Module3.name1, Module3.price)
Module3.sayHi()



@Entry
@Component
struct Index {
  build() {

  }
}
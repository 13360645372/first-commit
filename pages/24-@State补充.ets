interface Car {
  name: string
}

interface  Person {
  name: string
  car: Car
}

const obj: Person = {
  name: 'zs',
  car: {
    name: '小红车'
  }
}
console.log('',Object.keys(obj))

@Entry
@Component
struct Index {
  // 状态变量
  // 1. string number boolean 可以直接监视到变化
  @State message: string = 'hello world'
  // 2. 复杂类型 object class
  @State person: Person ={
    name: 'jack',
    car: {
      name: '宝马车'
    }
  }

  build() {
    Column() {
      Text(this.message)
        .fontSize(20)
      Button('改message')
        .onClick(() => {
          this.message = '你好'
        })
      Text(JSON.stringify(this.person))
      Button('改person')
        .onClick(() => {
          /*this.person = {
            name: 'any',
            car: {
              name: 'aaa'

            }
          }*/
          // this.person.name = 'toy'

          // 如果不是对象的第一层属性，修改时，需要修改整个嵌套的对象
          // this.person.car.name = '小伙测'
          // console.log('',this.person.car.name)
          this.person.car = {
            name: '小伙测'
          }
        })
    }
  }
}
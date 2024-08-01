// 接口的继承
/*interface IAnimal {
  name: string
}

interface Cat extends IAnimal {
  color: string
}

let cat: Cat = {
  name: 'tom',
  color: 'red',
}*/

// 接口实现： 定义一个接口，约束类 => 类需要按照接口的需求，实现类的主题
interface IDog {
  name: string
  age: number
  jump: () => void
}

class Dog implements IDog {
  name: string
  age: number

  constructor(name: string, age: number) {
    this.name = name
    this.age = age
  }

  jump () {
    console.log(`${this.name}跳了一下`)
  }
}

let dog: Dog = new Dog('小明', 15)
dog.jump()

@Entry
@Component
struct Index {
  build() {

  }
}
class Person {
  name: string
  age: number

  constructor(name: string, age: number) {
    this.name = name
    this.age = age
  }

  sayhi () {
    console.log('大家好',this.name, this.age)
  }
}

// extends 继承
class Student extends Person {
  //也能有自己的属性和方法
  grade: string

  constructor(name: string, age: number, grade: string) {
    // super 调用父类构造函数
    super(name, age)
    this.grade = grade
  }
  study() {
    console.log('hello,nice to meet you')
  }
  //如果子类中想要重写父类中的方法，只需要提供同名的方法即可
  sayhi(): void {
    console.log('holle',this.name, this.age)
  }
}

let s1: Student = new Student('Tom', 15, '五年级')
s1.sayhi()
s1.study()
console.log(s1.grade)


/*class Teacher extends Person {

}
let t1: Teacher = new Teacher('sadw', 30)
t1.sayhi()

class Worker extends Person {

}*/



@Entry
@Component
struct Index {



  build() {



  }
}
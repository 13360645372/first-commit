// console.log(typeof 111)

/*
class Person {}
class Student {}
let p: Person = new Person()
let s: Student = new Student()

// typeof只能判断是不是对象，不能判断是哪一个对象
// instanceof 判断复杂类型
*
console.log(typeof p)
console.log(typeof s)
*/
class Person {}

class Student extends Person{}

let s: Student = new Student()
console.log('判断结果',s instanceof Student)
console.log('判断结果',s instanceof Person)





@Entry
@Component
struct Index {



  build() {



  }
}
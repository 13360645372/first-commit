

interface Person {
  stuId: number
  name: string
  gender: string
  age: number
}

let stuArr: Person[] = [
  {stuId: 1, name: '小丽', gender: '女', age: 12},
  {stuId: 2, name: '小红', gender: '女', age: 15},
  {stuId: 3, name: '大强', gender: '男', age: 18},
  {stuId: 4, name: '阿明', gender: '男', age: 14},
]
// json.stringify(复杂类型) 对象/数组
// console.log('学生数组', JSON.stringify(stuArr))

// 具体使用（访问 —> 通过下标）
// console.log('小红', stuArr[1].name);
// console.log('小红', JSON.stringify(stuArr))

// 支持遍历 for...of
for (let item of stuArr) {
  console.log('每一项', JSON.stringify(item))
}


@Entry
@Component
struct Index {



  build() {

  }
}
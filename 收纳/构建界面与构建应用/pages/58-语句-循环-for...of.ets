let names: string[] = ['劳模','胸大','熊二']

// for (let i: number = 0; i < names.length; i++) {
//   console.log('名字是', names[i])
// }

// !!!遍历数组————for...of
// 语法for(let item of 数组名) {}
// item是变量

// for (let item of names) {
//   console.log('名字是', item)
// }

/*
let nums: number[] = [22, 3, 44, 55, 80]
let res: number = 0
for (let item of nums){
  res += item
}
console.log('累加', res);
*/

/*let nums: number[] = [22, 3, 44, 55, 80, 10, 11, 5, -1]
let res: number[] = []

for (let item of nums) {
  if (item >= 10) {
    res.push(item)
  }
}
console.log('结果', res)*/

let nums: number[] = [22, 3, 0, 55, 0, 0, 11, 5, 0]
let res: number[] = []

for (let item of nums) {
  if (item != 0) {
    res.push(item)
  }
}
console.log('结果', res)



@Entry
@Component
struct Index {



  build() {

  }
}
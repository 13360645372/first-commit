// ...数组名 => 可以收集剩余的参数
function sum (n1: number, n2: number, ...argsArr: number[]) {
  // console.log('剩余参数',argsArr)
  let total: number = n1 + n2
  for (let item of argsArr) {
    total += item
  }
  console.log('和：', total)
  return
}

sum(1,2)
sum(1,2,3)
sum(1,2,3,4,5,6)

// ... 展开运算符，用于数组的平铺合并
let arr1: number[] = [1,2,3]
let arr2: number[] = [4,5,6]
let newArr: number[] = [...arr1, ...arr2]

console.log('新数组：', newArr)



@Entry
@Component
struct Index {
  build() {

  }
}
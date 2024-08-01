// for (初始值; 循环条件; 变化量) {
//   重复执行的代码（循环体）
// }

// 1、一共8个包子，吃到第5个饱了
// for (let i: number = 1; i <= 8; i++) {
//   if (i == 5) {
//     console.log('吃包子', `第${i}个吃饱了`)
//     break;
//   }
//   console.log('吃包子', `第${i}个`)
// }

// 2、一共8个包子，吃到第5个坏了
for (let i: number = 1; i <= 8; i++) {
  if (i == 5) {
    console.log('吃包子', `第${i}个坏了`)
    continue
  }
  console.log('吃包子', `第${i}个`)
}

@Entry
@Component
struct Index {



  build() {

  }
}
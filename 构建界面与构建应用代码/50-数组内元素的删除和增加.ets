let name: string[] = ['告白气球', '洋葱', '吻别']

// 在数组开头加
name.unshift('彩虹')
console.log('歌曲名字', name.unshift('七里香'))

// 在数组末尾加
name.push('光辉岁月', '海阔天空')
console.log('歌曲名字', name)

// 在数组开头删
// name.shift()
//
// 在数组末尾删
// name.pop()
// console.log('歌曲名字', name)

// splice 在任意位置进行删除或新增
// 数组名.splice(操作的起始位置，删除几个，新增的项1，新增的项2，...)

// 1、删除（任意位置）
// name.splice(2,2)
// console.log('数组name',name);

// 2、新增（任意位置）
name.splice(1, 0, '可乐')
console.log('数组name',name);

@Entry
@Component
struct Index {

  build() {

  }
}
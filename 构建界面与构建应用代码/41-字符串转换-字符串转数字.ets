let str1: string = '1'
// let money: number = 500
let str2: string = '1.1'
let str3: string = '1.1a'
let str4: string = '1.19a'
let str5: string = 'a'

// Number(变量) 原样转数字
console.log('Number', Number(str1))
console.log('Number', Number(str2))
console.log('Number', Number(str3))
console.log('Number', Number(str4))
console.log('Number', Number(str5))

// parseInt(变量) 去掉小数部分
console.log('parseInt', parseInt(str1))
console.log('parseInt', parseInt(str2))
console.log('parseInt', parseInt(str3))
console.log('parseInt', parseInt(str4))
console.log('parseInt', parseInt(str5))

// parseFloat(变量) 保留小数部分
console.log('parseFloat', parseFloat(str1))
console.log('parseFloat', parseFloat(str2))
console.log('parseFloat', parseFloat(str3))
console.log('parseFloat', parseFloat(str4))
console.log('parseFloat', parseFloat(str5))
// console.log('总工资', Number(str1) + money )

@Entry
@Component
struct Index {
  @State message: string = 'holle world';

  build() {

  }
}
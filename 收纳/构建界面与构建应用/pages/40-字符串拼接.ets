// let name: string = '吕布'
// let age: number = 18
// console.log('简介信息', '姓名' + name);
// console.log('简介信息', '年级' + age);

// 只要有一边是字符串就能拼接


let name: string = '小明'
let age: number = 18

// 模板字符串``(支持变量，更利于字符串拼接）  Tab键上面
// 用${}
console.log('简介信息', `姓名是${name}，年龄是${age}岁`);
@Entry
@Component
struct Index {
  @State message: string = 'holle world';

  build() {

  }
}
//console.log('消息说明','打印的内容')
console.log('我说','李俊杰是大傻逼')
//变量的存储与修改（string number boolean）
//1、变量存储
//1.1字符串 string 类型
// 注意点1：字符串需要用引号引起来（单引号双引号都可以）
let title: string = '梁华焕也是大傻逼'
console.log('字符串title',title)

//1.2 数字 number 类型
let age: number= 18
console.log('年纪age',age)

//1.3 布尔 boolean 类型
let isLogin: boolean = false
console.log('是否登录成功',isLogin)

//2. 变量的修改
age = 231
console.log('年级age',age)

//3. 常量储存
//注意点：不可修改！！！
const PI: number = 3.14
const CompanyName: string = "华为"
console.log('常量PI',PI)
console.log('公司名称',CompanyName)

//命名柜子：
//1、只能包含数字，字母，下划线、$、不能以数字开头
//2、不能使用内置关键词或保留字 （比如 let、const）
//3、严格区分大小写



@Entry
@Component
struct Index {
  @State message: string = '李俊杰是大傻逼';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}
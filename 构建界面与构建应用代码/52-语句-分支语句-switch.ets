let fruit: string = '西瓜'

switch (fruit) {
  case '苹果':
    console.log('苹果：', '2.8元1斤');
    break
  case '香蕉':
    console.log('香蕉：', '4.5元1斤');
    break
  case '橙子':
    console.log('橙子：', '1.8元1斤');
    break
  case '西瓜':
    console.log('西瓜：', '4.8元1斤');
    break
  default :
    console.log('提示：','该水果不存在')
}


@Entry
@Component
struct Index {


  build() {

  }
}
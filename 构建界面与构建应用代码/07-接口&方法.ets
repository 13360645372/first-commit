//接口&方法
interface Person{
  name: string
  age: number
  weight: number
  dance:() => void
  sing:(song: string) => void
}

let ym: Person = {
  name: '杨幂',
  age: 18,
  weight: 90,
  dance:() => {
    console.log('杨幂说','我来跳个舞')
  },
  sing:(song: string) => {
    console.log('杨幂说', '我来唱首', song)
  }
}

ym.dance()
ym.sing('爱的供养')





@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

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
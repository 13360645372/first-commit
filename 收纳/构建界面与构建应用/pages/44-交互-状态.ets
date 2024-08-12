// 注意点：
// 1、普通变量，只能在初始化时渲染，后续变化了，也不能引起更新
// 2、状态变量，被装饰器修饰，值的改变，会自动{引起} 界面的刷新

@Entry
@Component
struct Index {
  // 组件内的普通变量 this.XXX
  myAge: number = 18

  // 组件内的状态变量 this.xxx
  @State message: string = 'holle world';

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontWeight(700)
          .fontSize(50)

        Button('点我，显示弹框')
          .onClick(() => {
            this.message = '你好，世界'
          })

      }
      .width('100%')
    }
    .height('100%')
  }
}
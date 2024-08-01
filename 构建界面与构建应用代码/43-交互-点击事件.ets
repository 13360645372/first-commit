

@Entry
@Component
struct Index {
  @State message: string = 'holle world';

  build() {
    Row() {
      Column() {
        Button('点我，显示弹框')
          .onClick(() => {
            console.log('你好点击事件');
            AlertDialog.show({
              message: '你好-这是个弹框'
            })
          })
        
        Text('文本')
          .onClick(() => {
            AlertDialog.show({
              message: '文本'
            })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}
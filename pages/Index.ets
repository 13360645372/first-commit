import { router } from '@kit.ArkUI'

interface ParamsObj {
  username: string
  mas: string
}

@Entry
@Component
struct Index {
  @State myName: string = ''

  // 一进页面就会执行的函数 => 生命周期函数
  aboutToAppear(): void {
    console.log('传递过来的数据', JSON.stringify(router.getParams()))
    // 接收参数
    const params = router.getParams() as ParamsObj
    this.myName = params.username
  }


  build() {
    Column() {
      Text('初始界面' + this.myName)
        .fontSize(20)
      Button('去编辑页')
        .onClick(() => {
          // pushUrl 点击后可以返回
          router.pushUrl({
            url: 'pages/EditPage'
          })
        })
      Button('去详情页')
        .onClick(() => {
          router.pushUrl({
            url: 'pages/DetailPage'
          })
        })
      Button('获取页面长度')
        .onClick(() => {
          AlertDialog.show({
            message: router.getLength()
          })
        })
    }
  }
}
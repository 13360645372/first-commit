
// 分支语句 - if语句
// let score: number = 50
//
// if (score >= 90) {
//   console.log('奖励游戏机')
// }
// else {
//   console.log('不奖励')
// }

// 多分枝
// let score: number = 777
// if (score >= 80) {
//   console.log('优秀')
// }
// else if(score >= 70 && score < 80) {
//   console.log('良好')
// }
// else if(score >= 60 && score < 70) {
//   console.log('及格')
// }
// else {
//   console.log('不及格')
// }




@Entry
@Component
struct Index {
  @State num: number = 1

  build() {
    Row() {
      Column() {
        Row() {
          Button('-')
            .onClick(() => {
              if (this.num >= 1) {
                this.num --
              }
              else {
                // console.log('提示','最小值为0，不能再减了')
                AlertDialog.show({
                  message: '最小值为0'
                })
              }
            })
          Text(this.num.toString()).margin(10)
          Button('+')
            .onClick(() => {
              this.num ++;
            })
        }.padding(20)

      }
      .width('100%')
    }
    .height('100%')
  }
}
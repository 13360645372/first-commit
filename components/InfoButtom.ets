import Core from '@ohos/hypium/src/main/core'

@Component
struct InfoButtom {
  @State txt: string = ''

  onSubmitComment = (content: string) => {}
  build() {
    Row() {
      Row() {
        Text('\ue840')
          .fontFamily('myfont')
          .fontSize(18)
          .margin({ left: 20 })
        TextInput({
          placeholder: '写评论...',
          text: $$this.txt
        })
          .backgroundColor(Color.Transparent)
          .fontSize(18)
          .onSubmit(() => {
            this.onSubmitComment(this.txt)
            this.txt = ''
          })
      }
      .height(40)
      .backgroundColor('#f5f6f5')
      .borderRadius(20)
      .margin({ left: 15, right: 20, top: 10, bottom: 10})
      .layoutWeight(1)

      Text('\uec7f')
        .fontFamily('myfont')
        .fontSize(26)
        .margin({ left: 6, right: 6})
      Text('\ueca7')
        .fontFamily('myfont')
        .fontSize(26)
        .margin({ left: 6, right: 6})
    }
    .padding(10)
    .width('100%')
    .height(60)
  }
}
export default InfoButtom
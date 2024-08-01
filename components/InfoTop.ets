@Extend(Button)
function fancyButton (ison: boolean) {
  .width(46)
  .height(32)
  .fontSize(12)
  .padding({ left: 5, right: 5 })
  .backgroundColor(ison ? '#fff' : '#F7F8FA')
  .fontColor(ison ? '#2f2e33' : '#8e9298')
  .border({ width: 1, color: ison ? '#e4e5e6' : '#FfF8FA'})

}

@Component
struct InfoTop {
  @State ison: boolean = true
  build() {
    Row() {
      Text('全部评论')
        .fontColor('#222')
        .fontWeight(700)
        .fontSize(20)
      Row() {
        Button('最新', { stateEffect: false})
          .fancyButton(this.ison)
          .onClick(() => {
            this.ison = true
          })
        Button('最热', { stateEffect: false})
          .fancyButton(!this.ison)
          .onClick(() => {
            this.ison = false
          })
      }
      .backgroundColor('#F7F8FA')
      .borderRadius(20)

    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
    .padding(16)

  }
}

export default InfoTop